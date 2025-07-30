Create table VehicleRenewed(
Id  int,
Name Varchar(20)
);

Select* 
From VehicleRenewed;
Insert INTO VehicleRenewed(Id,Name)
Values(2,'COF(roadworthy)');
DELETE 
FROM VehicleRenewed
where id =2

Create table VehicleFuel(
Id int, 
VehicleId int,
Fueldate  Date ,
Cost int
);

SELECT*
FROM VehicleFuel;

INSERT INTO VehicleFuel(Id,VehicleId,Fueldate,Cost)
SELECT Id,VehicleId,Fueldate,TotalCost
FROM Fuel
WHERE VehicleId=2;

Create table VehicleInsurance(
Id int,
VehicleId int,
InsurancePaymentDate Date,
Cost int 
);

Insert INTO  VehicleInsurance(Id,VehicleId,InsurancePaymentDate,Cost)
SELECT Id,VehicleId,PaymentDate,Cost
 FROM InsurancePayment
 WHERE VehicleId=2;

 SELECT*
 From VehicleInsurance;

 SELECT*
 FROM VehicleRenewal;
 
 Update VehicleRenewal
 SET VehicleRenewalId =2
 WHERE Id = 18;
 
SELECT VehicleRenewed.Name,VehicleRenewal.VehicleRenewalId
FROM VehicleRenewed
Join VehicleRenewal ON VehicleRenewal.VehicleRenewalId= VehicleRenewed.Id
Where VehicleId =2

 Create table FinancessYear(
 id int ,
 Startdate  date,
 Enddate  date,
 Year  int
 );

SELECT *
FROM FinancialYear;

SELECT distinct*
FROM FinancessYear;

 INSERT INTO Financeyears(Year)
 Values (2024),
WHERE Id Between 11 and 21;

INSERT INTO FinancessYear(Id,Year,Startdate,Enddate)
 SELECT Id,YEAR(DateRenewed) As Year,Validfrom,DateRenewed
 FROM VehicleRenewal
 WHERE Id Between 11 AND 21;

DELETE
FROM FinancessYear
WHERE  Year =2009;
 

SELECT*
FROM FinancialYear;

ALTER TABLE Financeyears
ADD Year int;

ALTER TABLE VehicleRenewalX
ADD RenewalId int

SELECT distinct*
FROM  VehicleRenewalX;

SELECT DATEDIFF(YEAR,ValidFrom,DateRenewed)
FROM VehicleRenewal;

INSERT INTO VehicleRenewalX(id,VehicleId,Cost,RenewalDate,RenewalId)
SELECT Id,VehicleId,Cost,DATEADD(Day,DATEDIFF(DAY,ValidFrom,DateRenewed)/2,Validfrom),VehicleRenewalId
FROM VehicleRenewal
Where Id Between 11 and 21;

DELETE
FROM VehicleRenewalX
Where VehicleId=1;

CREATE TABLE VehicleCost(
id int,
VehicleId int,
Totacostperkm int,
InsuranceCost int,
LicenseDisk   int,
COFRoadworthy int,
Fuel int,
Maintenance int,
FinancialYearId int,
TotalCostOwnership int
);

SELECT*
FROM VehicleRenewed;


SELECT 
    VehicleRenewal.ValidFrom,
	VehicleRenewal.DateRenewed,
	FinancessYear.id
FROM 
   VehicleRenewal
LEFT JOIN
     