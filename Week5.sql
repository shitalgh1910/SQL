create database mydatabase;
use mydatabase;
show databases;
create table customer(
customerNumber int primary key,
firstName varchar(25),
lastName varchar(25),
telephoneNum varchar(25),
streetNumber varchar(50),
streetName varchar(50),
suburb varchar(50),
postcode varchar(25),
city varchar(25),
state varchar(25),
propertyPreference varchar(25),
suburbOfInterest varchar(25),
maxAmount Decimal (10,2));
#creating property sale
create table PropertyForSale(
	propertyNumber int primary key,
	fstreetNumber varchar(25),
	StreetName varchar(25),
	suburb varchar(25),
	Postcode varchar(50),
	city varchar(50),
	state varchar(50),
	Saleprice decimal (10,2),
	PropertyType varchar(20),
	bedroom int,
	bathrooms int,
	garages int,
	sellingStaffNumber int
);
select* from PropertyForSale;
#Proprty for rent
create table PropertyForRent(
	PropertyNumber int primary key,
	streetNumber varchar(50),
	streetName varchar(50),
	suburb varchar(50),
	postcode varchar(25),
	city varchar(25),
	state varchar(25),
	rentalpriceperweek decimal(10,2),
	proprtyType varchar (20),
	bedroom int,
	bathroom int,
	garages int,
	availabledate date,
	rentingStaffNumber int
    );
select* from PropertyForRent;
#create staff table
create table Staff (
    StaffNumber INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    TelephoneNumber VARCHAR(20),
    StreetNumber VARCHAR(10),
    StreetName VARCHAR(100),
    Suburb VARCHAR(100),
    Postcode VARCHAR(10),
    City VARCHAR(100),
    State VARCHAR(50),
    DateOfBirth DATE,
    Salary DECIMAL(10, 2)
);
##create table propertyInspection
create table PropertyInspection (
    InspectionID int primary key,
    PropertyNumber int,
    InspectionDate date,
    InspectionTime time,
    PresentStaffNumber int
);

#creating table for notification
create table Notification (
    NotificationID int primary key,
    CustomerNumber int,
    PropertyNumber int,
    NotificationContent text
);

