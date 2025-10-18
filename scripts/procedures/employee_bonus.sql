CREATE PROCEDURE LoadEmployeeBonusData
    @TargetYear INT = NULL,
    @TargetMonth INT = NULL
AS
BEGIN
    SET NOCOUNT ON;

    -- параметры по умолчанию - текущий месяц
    IF @TargetYear IS NULL SET @TargetYear = YEAR(GETDATE())
    IF @TargetMonth IS NULL SET @TargetMonth = MONTH(GETDATE())

    -- Очистка данных за обрабатываемый месяц, если вычисления уже проводились
    DELETE FROM EmployeeBonusDashboard
    WHERE Year = @TargetYear AND Month = @TargetMonth;

    -- Вставляем рассчитанные данные
    INSERT INTO EmployeeBonusDashboard (
        Year, Month, EmployeeName, ExperienceBonusPercent,
        TotalRentalRevenue, TotalRepairRevenue, BonusAmount
    )
    SELECT
        @TargetYear AS Year,
        @TargetMonth AS Month,
        s.Name AS EmployeeName,

        -- Процент премии от стажа
        CASE
            WHEN DATEDIFF(MONTH, s.Date_in, GETDATE()) < 12 THEN 5.00
            WHEN DATEDIFF(MONTH, s.Date_in, GETDATE()) BETWEEN 12 AND 23 THEN 10.00
            ELSE 15.00
        END AS ExperienceBonusPercent,

        -- Сумма аренд с комиссией 30%
        ISNULL(SUM(CASE WHEN r.StaffId = s.Id THEN r.Time * b.RentPrice * 0.3 ELSE 0 END), 0) AS TotalRentalRevenue,

        -- Сумма ремонтов с комиссией 80%
        ISNULL(SUM(CASE WHEN sb.StaffId = s.Id THEN sb.Price * 0.8 ELSE 0 END), 0) AS TotalRepairRevenue,

        -- Итоговая премия: (P1*X1 + P2*X2) * X0
        (
            ISNULL(SUM(CASE WHEN r.StaffId = s.Id THEN r.Time * b.RentPrice * 0.3 ELSE 0 END), 0) +
            ISNULL(SUM(CASE WHEN sb.StaffId = s.Id THEN sb.Price * 0.8 ELSE 0 END), 0)
        ) *
        CASE
            WHEN DATEDIFF(MONTH, s.Date_in, GETDATE()) < 12 THEN 0.05
            WHEN DATEDIFF(MONTH, s.Date_in, GETDATE()) BETWEEN 12 AND 23 THEN 0.10
            ELSE 0.15
        END AS BonusAmount

    FROM Staff s
    LEFT JOIN RentBook r ON s.Id = r.StaffId
        AND YEAR(r.Date) = @TargetYear
        AND MONTH(r.Date) = @TargetMonth
        AND r.Paid = 1
    LEFT JOIN Bicycle b ON r.BicycleId = b.Id
    LEFT JOIN ServiceBook sb ON s.Id = sb.StaffId
        AND YEAR(sb.Date) = @TargetYear
        AND MONTH(sb.Date) = @TargetMonth
    WHERE s.Date_out > GETDATE()  -- только работающие сотрудники
    GROUP BY s.Id, s.Name, s.Date_in;

    PRINT 'Data loaded for ' + CAST(@TargetYear AS VARCHAR) + '-' + CAST(@TargetMonth AS VARCHAR);
END;