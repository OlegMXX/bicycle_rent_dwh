-- Загрузка данных за текущий месяц (без аргументов)
EXEC LoadEmployeeBonusData;

-- Загрузка данных за конкретный месяц
EXEC LoadEmployeeBonusData @TargetYear = 2024, @TargetMonth = 1;

-- Просмотр результатов (весь дашборд)
SELECT * FROM EmployeeBonusDashboard ORDER BY Year DESC, Month DESC, BonusAmount DESC;

-- Просмотр резульатов за определенный месяц.
SELECT * FROM EmployeeBonusDashboard WHERE Year = 2024 AND Month = 1;