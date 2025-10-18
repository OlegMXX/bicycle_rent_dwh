CREATE TABLE EmployeeBonusDashboard (
    Year INT NOT NULL,
    Month INT NOT NULL,
    EmployeeName VARCHAR(100) NOT NULL,
    ExperienceBonusPercent DECIMAL(5,2) NOT NULL,
    TotalRentalRevenue DECIMAL(10,2) NOT NULL,
    TotalRepairRevenue DECIMAL(10,2) NOT NULL,
    BonusAmount DECIMAL(10,2) NOT NULL,
    LoadDate DATETIME DEFAULT GETDATE(),
    PRIMARY KEY (Year, Month, EmployeeName)
);
