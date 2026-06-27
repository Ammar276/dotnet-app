CREATE DATABASE ClientsDB;
GO
USE ClientsDB;
GO
CREATE TABLE Reports (
ReportID INT PRIMARY KEY IDENTITY(1,1),
ClientName VARCHAR(100),
Status VARCHAR(50)
);
GO
INSERT INTO Reports (ClientName, Status) VALUES
('Client A - Financial System', 'Completed'),
('Client B - HR System','Pending');
GO
