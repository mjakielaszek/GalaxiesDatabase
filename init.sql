CREATE TABLE Galaxies(
	Galaxy_Name VARCHAR(30) PRIMARY KEY NOT NULL,
	Galactic_Longitude FLOAT CHECK (Galactic_Longitude >= -360 AND Galactic_Longitude <= 360),
	Galactic_Latitude FLOAT CHECK (Galactic_Latitude >= -90 AND Galactic_Latitude <= 90)
);

CREATE TABLE Stellar_System(
	System_ID INT identity(1,1) PRIMARY KEY NOT NULL,
	System_Name VARCHAR(30) unique,
	Number_of_Stars int check (Number_of_Stars > 0),
	Number_of_Planets int check (Number_of_Planets >= 0),
	Galaxy_Name VARCHAR(30) REFERENCES Galaxies ON DELETE CASCADE not null
);

CREATE TABLE Planets(
	Planet_Name VARCHAR(16) PRIMARY KEY NOT NULL,
	Surface_Area FLOAT check (Surface_Area > 0),
	Price_per_Acre DECIMAL(6,2) check (Price_per_Acre > 0),
	Mass FLOAT check (Mass > 0),
	Planet_Longitude FLOAT check (Planet_Longitude >= -360 and Planet_Longitude <= 360),
	Planet_Latitude FLOAT check (Planet_Latitude >= -90 and Planet_Latitude <=90),
	System_ID INT null REFERENCES Stellar_System on delete cascade
);

CREATE TABLE Stars(
	Bayer_Designation VARCHAR(30) PRIMARY KEY NOT NULL,
	Is_Available bIT DEFAULT 1,
	Value int check (Value > 0),
	Mass FLOAT check (Mass > 0),
	Brightness FLOAT check (Brightness >= -100 and Brightness <= 100),
	Star_Longitude FLOAT check (Star_Longitude >= -360 and Star_Longitude <= 360),
	Star_Latitude FLOAT check (Star_Latitude >= -90 and Star_Latitude <= 90),
	System_ID INT REFERENCES Stellar_System on delete cascade not null
);

CREATE TABLE Plots(
	Lot_Number VARCHAR(20) PRIMARY KEY NOT NULL,
	Size INT NOT NULL check (Size > 0),
	Quadrant VARCHAR(4),
	Latitude FLOAT check (Latitude >= -90 and Latitude <= 90),
	Longitude FLOAT check (Longitude >= -360 and Longitude <= 360),
	Is_Available BIT DEFAULT 1,
	Value decimal(7,2) check (Value > 0),
	Planet_Name VARCHAR(16) REFERENCES Planets on delete cascade not null
);

CREATE TABLE Auctions(
	Auction_ID INT identity(1,1) PRIMARY KEY NOT NULL,
	Start_Date DATETIME,
	End_Date DATETIME
);

CREATE TABLE Buyers(
	Buyer_ID INT identity(1,1) PRIMARY KEY NOT NULL,
	Buyer_Full_Name NVARCHAR(30) NOT NULL check (Buyer_Full_Name not like '%[0-9]%'),
	Buyer_Email VARCHAR(30) NOT NULL unique,
	Buyer_Phone_Number varchar(9) NOT NULL unique check (len(Buyer_Phone_Number) = 9 and Buyer_Phone_Number like '%[0-9]%')
);

CREATE TABLE Employees(
	Employee_ID INT identity(1,1) PRIMARY KEY NOT NULL,
	Employee_Full_Name NVARCHAR(30) NOT NULL check (Employee_Full_Name not like '%[0-9]%'),
	Is_Current BIT DEFAULT 1,
	Employee_Contact_Phone varchar(9) NOT NULL unique check (len(Employee_Contact_Phone) = 9 and Employee_Contact_Phone like '%[0-9]%'),
	Employee_Email VARCHAR(30) NOT NULL unique,
	Is_Available BIT DEFAULT 1
);

CREATE TABLE Offers(
	Offer_ID INT identity(1,1) PRIMARY KEY NOT NULL,
	Offer_Ammount decimal(7,2) NOT NULL check (Offer_Ammount > 0),
	Is_From_Auction BIT DEFAULT 0,
	Is_Final BIT DEFAULT 0,
	Buyer_ID INT REFERENCES Buyers on delete cascade not null,
	Employee_ID INT REFERENCES Employees on delete set null,
	Bayer_Designation varchar(30) null references Stars,
	Lot_Number varchar(20) null references Plots,
	Buyer_Email VARCHAR(30) references Buyers(Buyer_Email) on update cascade not null
);

CREATE TABLE Addresses(
	Adress_ID INT identity(1,1) PRIMARY KEY NOT NULL,
	City NVARCHAR(50) NOT NULL,
	Country VARCHAR(20) NOT NULL,
	ZIP_Code VARCHAR(8) NOT NULL,
	Street_Name NVARCHAR(30) NOT NULL,
	House_Number VARCHAR(5) NOT NULL,
	Is_Default BIT DEFAULT 0,
	Buyer_ID INT REFERENCES Buyers on delete cascade on update cascade not null
);

CREATE TABLE Transactions(
	Transaction_Number INT identity(1,1) PRIMARY KEY NOT NULL,
	Transaction_Date DATETIME NOT NULL,
	Transaction_Price decimal(7,2) NOT NULL check (Transaction_Price > 0),
	Is_Paid_For BIT DEFAULT 0,
	Employee_ID INT REFERENCES Employees on delete set null
);

CREATE TABLE Payments(
	Payment_ID INT identity(1,1) PRIMARY KEY NOT NULL,
	Payment_Date DATETIME NOT NULL,
	Payment_Ammount decimal(7,2) NOT NULL check (Payment_Ammount > 0),
	Transaction_Number INT REFERENCES Transactions on delete cascade null
);

CREATE TABLE Transactions_Positions(
	Position_ID INT identity(1,1) PRIMARY KEY NOT NULL,
	Is_Star BIT DEFAULT 0,
	Position_Price decimal(7,2) NOT NULL check (Position_Price > 0),
	Transaction_Number INT REFERENCES Transactions on delete cascade not null,
	Offer_ID INT REFERENCES Offers on delete cascade not null,
	Employee_ID INT REFERENCES Employees on delete set null
);

CREATE TABLE Certificates(
	Certificate_ID INT identity(1,1) PRIMARY KEY NOT NULL,
	Is_For_Star BIT DEFAULT 0,
	Chosen_Star_Name VARCHAR(20) null,
	Position_ID INT REFERENCES Transactions_Positions on delete cascade not null
);

CREATE TABLE Deliveries(
	Delivery_Number VARCHAR(40) PRIMARY KEY NOT NULL,
	Is_Sent BIT DEFAULT 0,
	Is_Delivered BIT DEFAULT 1,
	Employee_ID INT REFERENCES Employees on delete cascade not null,
	Address_ID INT REFERENCES Addresses on delete cascade not null
);

CREATE TABLE Go_toS(
	Auction_ID INT REFERENCES Auctions on delete cascade not null unique,
	Bayer_Designation VARCHAR(30) REFERENCES Stars on delete cascade not null,
	PRIMARY KEY(Auction_ID)
);

CREATE TABLE Go_toP(
	Auction_ID INT REFERENCES Auctions on delete cascade not null unique,
	Lot_Number VARCHAR(20) REFERENCES Plots  on delete cascade not null,
	PRIMARY KEY(Auction_ID)
);

CREATE TABLE DescribeS(
	Certificate_ID INT REFERENCES Certificates on delete cascade not null unique,
	Bayer_Designation VARCHAR(30) REFERENCES Stars on delete cascade not null unique,
	PRIMARY KEY(Bayer_Designation)
);

CREATE TABLE DescribeP(
	Certificate_ID INT REFERENCES Certificates on delete cascade not null unique,
	Lot_Number VARCHAR(20) REFERENCES Plots on delete cascade not null unique, 
	PRIMARY KEY(Lot_Number)
);

CREATE TABLE Undergo(
	Certificate_ID INT REFERENCES Certificates on delete cascade not null, 
	Delivery_Number VARCHAR(40) REFERENCES Deliveries on delete cascade not null,
	PRIMARY KEY(Certificate_ID, Delivery_Number)
);

create table Are_Placed_On(
	Offer_ID int references Offers on delete cascade not null unique,
	Auction_ID int references Auctions on delete cascade not null,
	primary key(Offer_ID)
);