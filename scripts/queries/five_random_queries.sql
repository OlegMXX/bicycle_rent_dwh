-- Эффективность сотрудников по арендам и ремонтам

SELECT
    s.Id AS StaffId,
    s.Name AS StaffName,
    COUNT(DISTINCT r.Id) AS TotalRentals,
    COUNT(DISTINCT sb.Id) AS TotalRepairs,
    SUM(r.Time) AS TotalRentalHours,
    SUM(CASE WHEN r.Paid = 1 THEN r.Time ELSE 0 END) AS PaidRentalHours
FROM Staff s
LEFT JOIN RentBook r ON s.Id = r.StaffId
LEFT JOIN ServiceBook sb ON s.Id = sb.StaffId
WHERE s.Date_out > GETDATE()
GROUP BY s.Id, s.Name
ORDER BY TotalRentals DESC, TotalRepairs DESC;


-- Топ моделей по принесенной прибыли на экземпляр

SELECT TOP 3
    bm.Name AS Model,
    bb.Name AS Brand,
    COUNT(DISTINCT b.Id) AS BikeCount,
    SUM(r.Time * b.RentPrice) AS TotalRevenue,
    SUM(r.Time * b.RentPrice) * 1.0 / COUNT(DISTINCT b.Id) AS RevenuePerBike
FROM Bicycle b
JOIN BicycleModel bm ON b.ModelId = bm.Id
JOIN BicycleBrand bb ON bm.BicycleBrandId = bb.Id
JOIN RentBook r ON b.Id = r.BicycleId
WHERE r.Paid = 1
GROUP BY bm.Name, bb.Name
ORDER BY RevenuePerBike DESC;


-- Самые проблемные велосипеды

SELECT TOP 5
    b.Id AS BicycleId,
    bm.Name AS Model,
    COUNT(sb.Id) AS RepairCount
FROM Bicycle b
JOIN BicycleModel bm ON b.ModelId = bm.Id
JOIN ServiceBook sb ON b.Id = sb.BicycleId
GROUP BY b.Id, bm.Name
ORDER BY RepairCount DESC;


-- Топ-5 клиентов по количеству аренд
SELECT TOP 5
	c.Name AS Client,
    COUNT(r.Id) AS RentalCount
FROM Client c
JOIN RentBook r ON c.Id = r.ClientId
GROUP BY c.Name
ORDER BY RentalCount DESC;


-- Детали, которые чаще всего меняют
SELECT TOP 5
    d.Type AS PartType,
    d.Name AS PartName,
    SUM(dfs.Amount) AS TotalUsed
FROM Detail d
JOIN DetailForService dfs ON d.Id = dfs.DetailId
GROUP BY d.Type, d.Name
ORDER BY TotalUsed DESC;