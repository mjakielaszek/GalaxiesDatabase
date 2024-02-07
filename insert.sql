INSERT INTO Galaxies (Galaxy_Name, Galactic_Longitude, Galactic_Latitude)
VALUES 
('Milky Way', 120.5, -25.3),
('Andromeda', 200.8, 30.2),
('Triangulum', 180.0, -10.5),
('Messier 87', 50.2, 45.7),
('Sombrero', 240.3, -15.8),
('Whirlpool', 170.9, 20.1),
('Pinwheel', 190.6, -5.4),
('Centaurus', 280.1, -40.9),
('Bodes', 210.0, 28.6),
('Sculptor', 30.5, -20.2);

INSERT INTO Stellar_System (System_Name, Number_of_Stars, Number_of_Planets, Galaxy_Name)
VALUES
('Solar System', 1, 8, 'Milky Way'),
('Alpha Centauri', 3, 4, 'Centaurus'),
('Pegasus Cluster', 1, 8, 'Andromeda'),
('Whirlwind System', 2, 6, 'Whirlpool'),
('Red Giant System', 1, 2, 'Sombrero'),
('Tri-Star Haven', 3, 7, 'Pinwheel'),
('Centaurus Central', 1, 0, 'Centaurus'),
('Lunar Orbit', 1, 10, 'Milky Way'),
('M87 Planetary System', 1, 3, 'Messier 87'),
('Solaris Cluster', 3, 8, 'Milky Way'),
('Andromeda Outskirts', 1, 3, 'Andromeda'),
('Triton System', 2, 5, 'Triangulum'),
('Antennae System', 1, 2, 'Bodes'),
('Capricorn System', 4, 10, 'Sombrero'),
('Galactic Whirlpool', 2, 6, 'Whirlpool'),
('Pinwheel Gateway', 3, 7, 'Pinwheel'),
('Centauri B System', 1, 1, 'Centaurus'),
('Bootes System', 2, 4, 'Bodes'),
('Milky Mirage', 3, 8, 'Milky Way'),
('Andromeda Nexus', 1, 3, 'Andromeda'),
('Triangulum Trails', 2, 5, 'Triangulum'),
('M87 Celestial Belt', 1, 2, 'Messier 87'),
('Sombrero Starfields', 2, 10, 'Sombrero');

INSERT INTO Stars (Bayer_Designation, Is_Available, Value, Mass, Brightness, Star_Longitude, Star_Latitude, System_ID)
VALUES 
('Alpha Centauri A', 0, 7000, 1.1, 5.8, 45.2, 15.8,(select System_ID from Stellar_System where System_Name = 'Alpha Centauri')),
('Alpha Centauri B', 0, 5000, 0.9, 5.5, 45.5, 16.0, (select System_ID from Stellar_System where System_Name = 'Alpha Centauri')),
('Proxima Centauri', 0, 4000, 0.12, 3.0, 45.0, 15.5, (select System_ID from Stellar_System where System_Name = 'Alpha Centauri')),
('Sirius', 0, 7000, 2.1, 8.7, 120.0, 30.0, (select System_ID from Stellar_System where System_Name = 'Pegasus Cluster')),
('Betelgeuse', 0, 6500, 12.0, 7.2, 82.3, -25.5, (select System_ID from Stellar_System where System_Name = 'Whirlwind System')),
('Vega', 1, 1000, 2.7, 4.9, 60.0, 12.5, (select System_ID from Stellar_System where System_Name = 'Whirlwind System')),
('Arcturus', 1, 1200, 1.8, 6.5, 40.0, -18.0, (select System_ID from Stellar_System where System_Name = 'Red Giant System')),
('Canopus', 1, 1500, 8.2, 9.2, 11.2, -3.5, (select System_ID from Stellar_System where System_Name = 'Tri-Star Haven')),
('Altair', 1, 1200, 1.9, 6.7, 30.0, -10.0, (select System_ID from Stellar_System where System_Name = 'Centaurus Central')),
('Fomalhaut', 1, 600, 1.7, 7.5, 18.0, 22.0, (select System_ID from Stellar_System where System_Name = 'Lunar Orbit')),
('Rigel', 0, 950, 18.0, 6.8, 55.0, -8.0, (select System_ID from Stellar_System where System_Name = 'M87 Planetary System')),
('Deneb', 1, 1100, 20.0, 7.6, 20.0, 30.0, (select System_ID from Stellar_System where System_Name = 'Solaris Cluster')),
('Antares', 1, 800, 15.0, 5.4, 10.0, 5.0, (select System_ID from Stellar_System where System_Name = 'Andromeda Outskirts')),
('Pollux', 1, 6000, 1.5, 5.0, 48.0, 25.0, (select System_ID from Stellar_System where System_Name = 'Triton System')),
('Aldebaran', 500, 750, 10.0, 4.8, 30.0, 40.0, (select System_ID from Stellar_System where System_Name = 'Antennae System')),
('Spica', 1, 1300, 10.5, 8.3, 18.0, 22.0, (select System_ID from Stellar_System where System_Name = 'Capricorn System')),
('Capella', 0, 1000, 9.0, 6.5, 55.0, -10.0, (select System_ID from Stellar_System where System_Name = 'Galactic Whirlpool')),
('Bellatrix', 1, 850, 12.5, 5.9, 30.0, -15.0, (select System_ID from Stellar_System where System_Name = 'Pinwheel Gateway')),
('Achernar', 1, 1200, 6.0, 7.2, 33.0, 9.0, (select System_ID from Stellar_System where System_Name = 'Centauri B System')),
('Betelgeuse II', 5000, 480.7, 8.5, 4.6, 45.0, -20.0, (select System_ID from Stellar_System where System_Name = 'Bootes System')),
('Mira', 1, 550, 1.2, 5.2, 25.0, 15.0, (select System_ID from Stellar_System where System_Name = 'Milky Mirage')),
('Regulus', 1, 920, 4.5, 7.0, 40.0, -5.0, (select System_ID from Stellar_System where System_Name = 'Andromeda Nexus')),
('Alphard', 1, 700, 8.0, 6.8, 12.0, -25.0, (select System_ID from Stellar_System where System_Name = 'Triangulum Trails')),
('Acrux', 1, 6000, 10.2, 5.5, 35.0, -18.0, (select System_ID from Stellar_System where System_Name = 'M87 Celestial Belt')),
('Dschubba', 0, 4800, 3.0, 4.7, 48.0, 20.0, (select System_ID from Stellar_System where System_Name = 'Sombrero Starfields'));

insert into Auctions (Start_Date, End_Date)
values
(convert(datetime, '2023.11.23'), convert(datetime, '2023.11.25')),
(convert(datetime, '2023.08.01'), convert(datetime, '2023.08.25')),
(convert(datetime, '2023.01.07'), convert(datetime, '2023.01.15')),
(convert(datetime, '2023.03.15'), convert(datetime, '2023.03.25')),
(convert(datetime, '2023.06.09'), convert(datetime, '2023.06.11')),
(convert(datetime, '2023.09.11'), convert(datetime, '2023.09.12')),
(convert(datetime, '2023.02.02'), convert(datetime, '2023.02.05')),
(convert(datetime, '2023.11.19'), convert(datetime, '2023.11.20')),
(convert(datetime, '2023.12.10'), convert(datetime, '2023.12.17')),
(convert(datetime, '2023.10.15'), convert(datetime, '2023.10.22')),
(convert(datetime, '2023.04.05'), convert(datetime, '2023.04.07'));

INSERT INTO Planets (Planet_Name, Surface_Area, Price_per_Acre, Mass, Planet_Longitude, Planet_Latitude, System_ID)
VALUES 
('Mars', 0.2837, 4200.00, 0.1074, 45.2, 15.8, (select System_ID from Stellar_System where System_Name = 'Solar System')),
('Venus', 0.9025, 6200.00, 0.8164, 12.0, -5.5, (select System_ID from Stellar_System where System_Name = 'Solar System')),
('Jupiter', 120.315, 3200.00, 317.093, 120.0, 30.0, (select System_ID from Stellar_System where System_Name = 'Solar System')),
('Saturn', 83.654, 2800.00, 95.138, 82.3, -25.5, (select System_ID from Stellar_System where System_Name = 'Solar System')),
('Uranus', 15.898, 3400.00, 14.514, 60.0, 12.5, (select System_ID from Stellar_System where System_Name = 'Solar System')),
('Neptune', 14.909, 3700.00, 17.06, 40.0, -18.0, (select System_ID from Stellar_System where System_Name = 'Solar System')),
('Mercury', 0.1467, 7400.00, 0.0553, 11.2, -3.5, (select System_ID from Stellar_System where System_Name = 'Solar System')),
('Mars II', 0.2393, 4200.00, 0.1074, 45.2, 15.8, (select System_ID from Stellar_System where System_Name = 'Pegasus Cluster')),
('Lava World', 0.0942, 4600.00, 0.00345, 55.0, -8.0, (select System_ID from Stellar_System where System_Name = 'Lunar Orbit')),
('Golden Desert', 0.0706, 4300.00, 0.00629, 20.0, 30.0, (select System_ID from Stellar_System where System_Name = 'Lunar Orbit')),
('Swampy World', 0.1469, 4900.00, 0.00785, 10.0, 5.0, (select System_ID from Stellar_System where System_Name = 'Lunar Orbit')),
('Rocky World', 0.1216, 4700.00, 0.00224, 48.0, 25.0, (select System_ID from Stellar_System where System_Name = 'Lunar Orbit')), 
('Blue Oasis', 0.1590, 5200.00, 0.00427, 30.0, 40.0, (select System_ID from Stellar_System where System_Name = 'Lunar Orbit')),
('Magnetic World', 0.1352, 4800.00, 0.00766, 18.0, 22.0, (select System_ID from Stellar_System where System_Name = 'Lunar Orbit')),
('Nibiru', 0.5, 5000.00, 0.5, 25.0, -15.0, (select System_ID from Stellar_System where System_Name = 'Alpha Centauri')),
('Desert World', 0.042, 4300.00, 0.001, 15.0, -5.0, (select System_ID from Stellar_System where System_Name = 'Alpha Centauri')),
('Oceanic World', 0.075, 5000.00, 0.002, -10.0, -20.0, (select System_ID from Stellar_System where System_Name = 'Alpha Centauri')),
('Monesy', 0.034, 4800.00, 0.0015, 5.0, 10.0, (select System_ID from Stellar_System where System_Name = 'Alpha Centauri')),
('Poseidon', 0.028, 5200.00, 0.0008, -8.0, -15.0, (select System_ID from Stellar_System where System_Name = 'Pegasus Cluster')),
('Stone World', 0.019, 4700.00, 0.0006, 12.0, 8.0, (select System_ID from Stellar_System where System_Name = 'Pegasus Cluster')),
('Dusty Planet', 0.056, 4500.00, 0.0012, -3.0, 25.0, (select System_ID from Stellar_System where System_Name = 'Pegasus Cluster')),
('Molten World', 0.087, 4600.00, 0.003, 30.0, -10.0, (select System_ID from Stellar_System where System_Name = 'Sombrero Starfields')),
('Cloudy Giant', 0.124, 3400.00, 0.018, 55.0, -30.0, (select System_ID from Stellar_System where System_Name = 'Sombrero Starfields')),
('Metallic World', 0.026, 4800.00, 0.0009, 18.0, 12.0, (select System_ID from Stellar_System where System_Name = 'Sombrero Starfields')),
('Green Oasis', 0.105, 5100.00, 0.004, -20.0, 5.0, NULL);

insert into Plots (Size, Value, Quadrant, Latitude, Longitude, Lot_Number, Is_Available, Planet_Name)
values
(50, 7000, 'NW1', 12.5, -45.2, 'NB168', 0, 'Nibiru'),
(70, 5000, 'SE2', -8.0, 55.5, 'MY1454', 0, 'Monesy'),
(30, 2000, 'NE4', 15.0, 22.0, 'PN2351', 1, 'Poseidon'),
(45, 1500, 'SW7', -25.0, 82.3, 'VS542', 1, 'Venus'),
(60, 6000, 'NW', -18.0, 40.0, 'JR144', 0, 'Jupiter'),
(80, 7000, 'SE', 30.0, 120.0, 'JR853', 0, 'Jupiter'),
(350, 5500, 'NE', 12.0, 60.0, 'GD125', 1, 'Golden Desert'),
(55, 1200, 'SW', -5.5, 45.5, 'GO812', 1, 'Green Oasis'),
(40, 4800, 'NW', 25.0, 18.0, 'RW1245', 1, 'Rocky World'),
(65, 7300, 'SE', -15.0, 33.0, 'URS214', 1, 'Uranus'),
(250, 15000, 'NE', 9.0, 48.0, 'NE097', 0, 'Neptune'),
(50, 3000, 'SW', 40.0, 20.0, 'NE128', 0, 'Neptune'),
(300, 12000, 'NW', -10.0, 11.2, 'MY241', 1, 'Mercury'),
(45, 3500, 'SE', 5.0, 30.0, 'MY1892', 1, 'Mercury'),
(60, 5500, 'NE', 30.0, 55.0, 'MW131', 0, 'Molten World'),
(35, 1700, 'SW', -20.0, 25.0, 'BO123', 0, 'Blue Oasis'),
(20, 1300, 'Q1', 29, -200, 'VS753', 0, 'Venus'),
(50, 1800, 'D4', 34.2, 230, 'MS231', 0, 'Mars');

insert into Go_toS (Auction_ID, Bayer_Designation)
values
(8, 'Rigel'),
(9, 'Dschubba'),
(10, 'Bellatrix'),
(11, 'Alpha Centauri A'),
(1, 'Altair'),
(3, 'Betelgeuse'),
(4, 'Achernar'),
(7, 'Mira'),
(6, 'Altair');

insert into Go_toP (Auction_ID, Lot_Number)
values
(1, 'MS231'),
(2, 'NE097'),
(3, 'GO812'),
(4, 'MS231'),
(5, 'JR853'),
(6, 'MY241'),
(7, 'NB168'),
(8, 'URS214');

INSERT INTO Buyers (Buyer_Full_Name, Buyer_Email, Buyer_Phone_Number)
VALUES 
('Alice Johnson', 'alice@email.com', '123456389'),
('Bob Smith', 'bob@email.com', '987654321'),
('Charlie Brown', 'charlie@email.com', '678901234'),
('David White', 'david@email.com', '345789012'),
('Eva Davis', 'eva@email.com', '876543109'),
('Frank Miller', 'frank@email.com', '345678001'),
('Grace Wilson', 'grace@email.com', '890123456'),
('Henry Turner', 'henry@email.com', '901234567'),
('Ivy Taylor', 'ivy@email.com', '456890123'),
('Jack Lee', 'jack@email.com', '567905234'),
('Karen Moore', 'karen@email.com', '234567890'),
('Leo Davis', 'leo@email.com', '678012345'),
('Mia Johnson', 'mia@email.com', '345678901'),
('Nathan Brown', 'nathan@email.com', '342789012'),
('Olivia White', 'olivia@email.com', '720123456'),
('Peter Smith', 'peter@email.com', '891234567'),
('Quinn Turner', 'quinn@email.com', '427890123'),
('Rachel Lee', 'rachel@email.com', '578911234'),
('Samuel Taylor', 'samuel@email.com', '134562890'),
('Tina Moore', 'tina@email.com', '678904345');

INSERT INTO Addresses (City, Country, ZIP_Code, Street_Name, House_Number, Is_Default, Buyer_ID)
VALUES 
('New York', 'USA', '10001', 'Broadway', '123', 1, (select Buyer_ID from Buyers where Buyer_Email = 'alice@email.com')),
('London', 'UK', 'SW1A 1AA', 'Oxford', '456', 1, (select Buyer_ID from Buyers where Buyer_Email = 'bob@email.com')),
('Paris', 'France', '75001', 'Champs-Élysées', '789', 1, (select Buyer_ID from Buyers where Buyer_Email = 'charlie@email.com')),
('Tokyo', 'Japan', '100-0001', 'Shibuya', '101', 1, (select Buyer_ID from Buyers where Buyer_Email = 'david@email.com')),
('Sydney', 'Australia', '2000', 'George', '202', 1, (select Buyer_ID from Buyers where Buyer_Email = 'eva@email.com')),
('Berlin', 'Germany', '10115', 'Friedrichstraße', '303', 1, (select Buyer_ID from Buyers where Buyer_Email = 'frank@email.com')),
('Rome', 'Italy', '00118', 'Via del Corso', '404', 1, (select Buyer_ID from Buyers where Buyer_Email = 'grace@email.com')),
('Moscow', 'Russia', '101000', 'Tverskaya', '505', 1, (select Buyer_ID from Buyers where Buyer_Email = 'henry@email.com')),
('Beijing', 'China', '100010', 'Wangfujing', '606', 1, (select Buyer_ID from Buyers where Buyer_Email = 'ivy@email.com')),
('Rio de Janeiro', 'Brazil', '2007', 'Avenida Atlantica', '707', 1, (select Buyer_ID from Buyers where Buyer_Email = 'jack@email.com')),
('Cape Town', 'South Africa', '8000', 'Long', '808', 1, (select Buyer_ID from Buyers where Buyer_Email = 'karen@email.com')),
('Delhi', 'India', '110001', 'Connaught Place', '909', 1, (select Buyer_ID from Buyers where Buyer_Email = 'leo@email.com')),
('Mexico City', 'Mexico', '06000', 'Paseo de la Reforma', '1010', 1, (select Buyer_ID from Buyers where Buyer_Email = 'mia@email.com')),
('Toronto', 'Canada', 'M5H 2N2', 'Yonge', '1111', 1, (select Buyer_ID from Buyers where Buyer_Email = 'nathan@email.com')),
('Seoul', 'South Korea', '04535', 'Myeong-dong', '1212', 1, (select Buyer_ID from Buyers where Buyer_Email = 'olivia@email.com')),
('Dubai', 'UAE', '12345', 'Sheikh Zayed Road', '1313', 1, (select Buyer_ID from Buyers where Buyer_Email = 'peter@email.com')),
('Mumbai', 'India', '400001', 'Marine Drive', '1414', 1, (select Buyer_ID from Buyers where Buyer_Email = 'quinn@email.com')),
('Los Angeles', 'USA', '90001', 'Hollywood Boulevard', '1515', 1, (select Buyer_ID from Buyers where Buyer_Email = 'rachel@email.com')),
('Madrid', 'Spain', '28001', 'Gran Vía', '1616', 1, (select Buyer_ID from Buyers where Buyer_Email = 'samuel@email.com')),
('Osaka', 'Japan', '53001', 'Dotonbori', '1818', 0, (select Buyer_ID from Buyers where Buyer_Email = 'alice@email.com')),
('Buenos Aires', 'Argentina', 'C1002AAP', 'Avenida 9 de Julio', '1919', 0, (select Buyer_ID from Buyers where Buyer_Email = 'grace@email.com')),
('Stockholm', 'Sweden', '11120', 'Drottninggatan', '2020', 0, (select Buyer_ID from Buyers where Buyer_Email = 'jack@email.com')),
('Athens', 'Greece', '10564', 'Ermou Street', '2121', 0, (select Buyer_ID from Buyers where Buyer_Email = 'quinn@email.com')),
('Lisbon', 'Portugal', '1097', 'Rua Augusta', '2222', 0, (select Buyer_ID from Buyers where Buyer_Email = 'ivy@email.com'));

INSERT INTO Employees (Employee_Full_Name, Is_Current, Employee_Contact_Phone, Employee_Email, Is_Available)
VALUES 
('John Doe', 0, '122437890', 'john.doe@email.com', 1),
('Jane Smith', 0, '984254321', 'jane.smith@email.com', 1),
('Robert Johnson', 0, '111234567', 'robert.j@email.com', 1),
('Emily Davis', 1, '889827890', 'emily.d@email.com', 0),
('Michael Brown', 1, '239876543', 'michael.b@email.com', 0),
('Sarah Wilson', 1, '286894560', 'sarah.w@email.com', 0),
('David Taylor', 1, '709289999', 'david.t@email.com', 0),
('Amanda Lee', 1, '332025111', 'amanda.l@email.com', 1),
('Christopher White', 1, '024667777', 'chris.w@email.com', 1),
('Laura Johnson', 1, '444596966', 'laura.j@email.com', 1),
('Mark Miller', 1, '111223926', 'mark.m@email.com', 1),
('Olivia Davis', 1, '998882077', 'olivia.d@email.com', 1),
('Daniel Garcia', 1, '334450255', 'daniel.g@email.com', 1),
('Sophia Anderson', 1, '555233333', 'sophia.a@email.com', 1),
('William Martinez', 1, '923133233', 'william.m@email.com', 1),
('Emma Wilson', 1, '666551844', 'emma.w@email.com', 1),
('Matthew Robinson', 1, '405556666', 'matthew.r@email.com', 1),
('Grace Taylor', 1, '777688555', 'grace.t@email.com', 1),
('James Harris', 1, '888629111', 'james.h@email.com', 1),
('Lily Jackson', 1, '554391333', 'lily.j@email.com', 1);

insert into Offers (Offer_Ammount, Is_From_Auction, Is_Final, Buyer_ID,   Employee_ID,  Bayer_Designation, Lot_Number, Buyer_Email)
VALUES 
(5000, 1, 0, (select Buyer_ID from Buyers where Buyer_Email = 'alice@email.com'), null, 'Mira', null, 'alice@email.com'),
(5500, 1, 1, (select Buyer_ID from Buyers where Buyer_Email = 'bob@email.com'), (select Employee_ID from Employees where Employee_Email = 'chris.w@email.com'), 'Mira', null, 'bob@email.com'),
(3000, 1, 0, (select Buyer_ID from Buyers where Buyer_Email = 'samuel@email.com'), null, null, 'NB168', 'samuel@email.com'),
(4000, 1, 0, (select Buyer_ID from Buyers where Buyer_Email = 'jack@email.com'), null, null, 'NB168', 'jack@email.com'),
(6000, 1, 1, (select Buyer_ID from Buyers where Buyer_Email = 'bob@email.com'), (select Employee_ID from Employees where Employee_Email = 'chris.w@email.com'), null, 'NB168','bob@email.com'),
(5000, 1, 0, (select Buyer_ID from Buyers where Buyer_Email = 'samuel@email.com'), null, 'Betelgeuse', null, 'samuel@email.com'),
(6000, 1, 0, (select Buyer_ID from Buyers where Buyer_Email = 'frank@email.com'), null, 'Betelgeuse', null, 'frank@email.com'),
(8000, 1, 0, (select Buyer_ID from Buyers where Buyer_Email = 'bob@email.com'), null, 'Betelgeuse', null, 'bob@email.com'),
(10000, 1, 1, (select Buyer_ID from Buyers where Buyer_Email = 'mia@email.com'), (select Employee_ID from Employees where Employee_Email = 'matthew.r@email.com'), 'Betelgeuse', null, 'mia@email.com'),
(5000, 0, 1, (select Buyer_ID from Buyers where Buyer_Email = 'frank@email.com'), (select Employee_ID from Employees where Employee_Email = 'chris.w@email.com'), null, 'BO123', 'frank@email.com'),
(6000, 0, 1, (select Buyer_ID from Buyers where Buyer_Email = 'quinn@email.com'), (select Employee_ID from Employees where Employee_Email = 'sarah.w@email.com'), null, 'MY1454', 'quinn@email.com'),
(4999.99, 0, 1, (select Buyer_ID from Buyers where Buyer_Email = 'nathan@email.com'), (select Employee_ID from Employees where Employee_Email = 'james.h@email.com'), null, 'VS753', 'nathan@email.com'),
(3000, 0, 1, (select Buyer_ID from Buyers where Buyer_Email = 'quinn@email.com'), (select Employee_ID from Employees where Employee_Email = 'robert.j@email.com'), null, 'MW131', 'quinn@email.com'),
(9999.99, 1, 1, (select Buyer_ID from Buyers where Buyer_Email = 'karen@email.com'), (select Employee_ID from Employees where Employee_Email = 'david.t@email.com'), 'Alpha Centauri A', null, 'karen@email.com'),
(8999.99, 0, 1, (select Buyer_ID from Buyers where Buyer_Email = 'henry@email.com'), (select Employee_ID from Employees where Employee_Email = 'david.t@email.com'), 'Alpha Centauri B', null, 'henry@email.com'),
(5499.99, 0, 1, (select Buyer_ID from Buyers where Buyer_Email = 'eva@email.com'), (select Employee_ID from Employees where Employee_Email = 'amanda.l@email.com'), 'Proxima Centauri', null, 'eva@email.com'),
(6399.99, 0, 1, (select Buyer_ID from Buyers where Buyer_Email = 'grace@email.com'), (select Employee_ID from Employees where Employee_Email = 'emily.d@email.com'), 'Sirius', null, 'grace@email.com'),
(1950, 1, 1, (select Buyer_ID from Buyers where Buyer_Email = 'nathan@email.com'), (select Employee_ID from Employees where Employee_Email = 'chris.w@email.com'), 'Rigel', null, 'nathan@email.com'),
(2009.99, 0, 1, (select Buyer_ID from Buyers where Buyer_Email = 'nathan@email.com'), (select Employee_ID from Employees where Employee_Email = 'emma.w@email.com'), 'Capella', null, 'nathan@email.com'),
(6299.99, 0, 1, (select Buyer_ID from Buyers where Buyer_Email = 'mia@email.com'), (select Employee_ID from Employees where Employee_Email = 'matthew.r@email.com'), 'Betelgeuse II', null, 'mia@email.com'),
(1000, 1, 0, (select Buyer_ID from Buyers where Buyer_Email = 'henry@email.com'), null, 'Dschubba', null, 'henry@email.com'),
(1300, 1, 0, (select Buyer_ID from Buyers where Buyer_Email = 'peter@email.com'), null, 'Dschubba', null, 'peter@email.com'),
(1999, 1, 1, (select Buyer_ID from Buyers where Buyer_Email = 'henry@email.com'), (select Employee_ID from Employees where Employee_Email = 'michael.b@email.com'), 'Dschubba', null, 'henry@email.com');
 
insert into Are_Placed_On (Offer_ID, Auction_ID)
values
(1, 7),
(2, 7),
(3, 7),
(4, 7),
(5, 7),
(6, 3),
(7, 3),
(8, 3),
(9 ,3),
(14, 11),
(15, 11),
(18, 8),
(21, 9),
(22, 9),
(23, 9);

insert into Transactions (Transaction_Date, Transaction_Price, Is_Paid_For, Employee_ID)
values
(convert(datetime, '2023.02.05'), 11500, 1, (select Employee_ID from Employees where Employee_Email = 'chris.w@email.com')),
(convert(datetime, '2023.01.15'), 10000.00, 1, (select Employee_ID from Employees where Employee_Email = 'matthew.r@email.com')),
('2023-12-15T12:30:00', 5000.00, 1, (select Employee_ID from Employees where Employee_Email = 'chris.w@email.com')),
('2023-02-12T17:12:00', 6000.00, 1, (select Employee_ID from Employees where Employee_Email = 'sarah.w@email.com')),
('2023-06-15T22:38:53', 4999.99, 1, (select Employee_ID from Employees where Employee_Email = 'james.h@email.com')),
('2023-04-28T13:53:24', 3000.00, 1, (select Employee_ID from Employees where Employee_Email = 'robert.j@email.com')),
('2023-07-15T21:37:24', 9999.99, 1, (select Employee_ID from Employees where Employee_Email = 'david.t@email.com')),
('2023-10-05T23:01:00', 8999.99, 1, (select Employee_ID from Employees where Employee_Email = 'david.t@email.com')),
('2023-03-09T08:37:00', 5499.99, 1, (select Employee_ID from Employees where Employee_Email = 'amanda.l@email.com')),
('2023-02-04T16:24:00', 6399.99, 1, (select Employee_ID from Employees where Employee_Email = 'emily.d@email.com')),
('2023-11-23T15:04:00', 1950.00, 1, (select Employee_ID from Employees where Employee_Email = 'chris.w@email.com')),
('2023-11-30T17:12:00', 2009.99, 1, (select Employee_ID from Employees where Employee_Email = 'emma.w@email.com')),
('2023-11-03T12:55:00', 6299.99, 1, (select Employee_ID from Employees where Employee_Email = 'matthew.r@email.com')),
('2023-11-03T12:55:00', 1999.00, 0, (select Employee_ID from Employees where Employee_Email = 'michael.b@email.com'));

insert into Transactions_Positions (Is_Star, Position_Price, Transaction_Number, Offer_ID, Employee_ID)
values
(1, 5500.00, 1, 2, (select Employee_ID from Employees where Employee_Email = 'chris.w@email.com')),
(0, 6500.00, 1, 5, (select Employee_ID from Employees where Employee_Email = 'chris.w@email.com')),
(1, 10000.00, 2, 9, (select Employee_ID from Employees where Employee_Email = 'matthew.r@email.com')),
(0, 5000.00, 3, 10, (select Employee_ID from Employees where Employee_Email = 'chris.w@email.com')),
(0, 6000.00, 4, 11, (select Employee_ID from Employees where Employee_Email = 'sarah.w@email.com')),
(0, 4999.99, 5, 12, (select Employee_ID from Employees where Employee_Email = 'james.h@email.com')),
(0, 3000.00, 6, 13, (select Employee_ID from Employees where Employee_Email = 'robert.j@email.com')),
(1, 9999.99, 7, 14, (select Employee_ID from Employees where Employee_Email = 'david.t@email.com')),
(1, 8999.99, 8, 15, (select Employee_ID from Employees where Employee_Email = 'david.t@email.com')),
(1, 5499.99, 9, 16, (select Employee_ID from Employees where Employee_Email = 'amanda.l@email.com')),
(1, 6399.99, 10, 17, (select Employee_ID from Employees where Employee_Email = 'emily.d@email.com')),
(1, 1950.00, 11, 18, (select Employee_ID from Employees where Employee_Email = 'chris.w@email.com')),
(1, 2009.99, 12, 19, (select Employee_ID from Employees where Employee_Email = 'emma.w@email.com')),
(1, 6299.99, 13, 20, (select Employee_ID from Employees where Employee_Email = 'matthew.r@email.com')),
(1, 1999.00, 14, 23, (select Employee_ID from Employees where Employee_Email = 'michael.b@email.com'));

insert into Deliveries (Delivery_Number, Is_Sent, Is_Delivered, Address_ID, Employee_ID)
values 
('DHL12345', 1, 1, 2, (select Employee_ID from Employees where Employee_Email = 'chris.w@email.com')),
('UPS67890', 1, 1, 13, (select Employee_ID from Employees where Employee_Email = 'matthew.r@email.com')),
('DHLABC12', 1, 1, 6, (select Employee_ID from Employees where Employee_Email = 'chris.w@email.com')),
('UPSXYZ34', 1, 1, 17, (select Employee_ID from Employees where Employee_Email = 'sarah.w@email.com')),
('DHL78901', 1, 1, 14, (select Employee_ID from Employees where Employee_Email = 'james.h@email.com')),
('UPSDEF56', 1, 1, 17, (select Employee_ID from Employees where Employee_Email = 'robert.j@email.com')),
('DHL23456', 1, 1, 11, (select Employee_ID from Employees where Employee_Email = 'david.t@email.com')),
('UPSGHI78', 1, 1, 8, (select Employee_ID from Employees where Employee_Email = 'david.t@email.com')),
('DHLJKL90', 1, 1, 5, (select Employee_ID from Employees where Employee_Email = 'amanda.l@email.com')),
('UPS123AB', 1, 1, 7, (select Employee_ID from Employees where Employee_Email = 'emily.d@email.com')),
('DHL456CD', 1, 1, 14, (select Employee_ID from Employees where Employee_Email = 'chris.w@email.com')),
('UPS789EF', 1, 1, 14, (select Employee_ID from Employees where Employee_Email = 'sarah.w@email.com')),
('DHLGH123', 1, 0, 13, (select Employee_ID from Employees where Employee_Email = 'matthew.r@email.com')),
('DHL789KL', 1, 1, 13, (select Employee_ID from Employees where Employee_Email = 'matthew.r@email.com'));

 insert into Payments( Payment_Date, Payment_Ammount, Transaction_Number)
 values 
 ('2023-02-06T01:53:00', 6500, 1),
 ('2023-02-06T01:54:00', 5000, 1),
 ('2023-01-16T00:03:00', 10000.00, 2),
 ('2023-12-15T12:32:00', 5000.00, 3),
 ('2023-02-12T17:15:00', 6000.00, 4),
 ('2023-06-15T22:40:21', 4999.99, 5),
 ('2023-04-28T13:55:24', 3000.00, 6),
 ('2023-07-15T21:39:24', 9999.99, 7),
 ('2023-10-05T23:04:00', 8999.99, 8),
 ('2023-03-09T09:37:00', 5499.99, 9),
 ('2023-02-04T16:30:00', 6399.99, 10),
 ('2023-11-23T15:10:00', 1950.00, 11),
 ('2023-11-30T17:15:00', 2009.99, 12),
 ('2023-11-03T13:02:00', 6299.99, 13);

 insert into Certificates(Is_For_Star, Chosen_Star_Name, Position_ID)
 values 
 (1, 'Myriad Lumina', 1),
 (1, 'Ecliptic Solitude', 3),
 (1, 'Nebula Whispers', 8),
 (1, 'Ethereal Ember', 11),
 (1, 'Radiant Dreamscape', 14),
 (1, 'Lunas Lullaby', 12),
 (1, 'Solar Serenity', 9),
 (1, 'Stardust Echoes', 13),
 (1, 'Cosmos Reverie', 10),
 (0, null, 2),
 (0, null, 4),
 (0, null, 5),
 (0, null, 6),
 (0, null, 7);

 insert into DescribeP(Certificate_ID, Lot_Number)
 values 
 (10, 'NB168'),
 (11, 'BO123'),
 (12, 'MY1454'),
 (13, 'VS753'),
 (14, 'MW131');

 insert into DescribeS(Certificate_ID, Bayer_Designation)
 values 
 (1, 'Mira'),
 (2, 'Betelgeuse'),
 (3, 'Alpha Centauri A'),
 (4, 'Alpha Centauri B'),
 (5, 'Proxima Centauri'),
 (6, 'Sirius'),
 (7, 'Rigel'),
 (8, 'Capella'),
 (9, 'Betelgeuse II');
 /*position_id 15 not completed order */

insert into Undergo (Certificate_ID, Delivery_Number)
values 
(1, 'DHL12345'),
(10, 'DHL12345'),
(2, 'DHL789KL'),
(3, 'DHL23456'),
(4, 'UPS123AB'),
(5, 'DHLGH123'),
(5, 'UPS67890'),
(6, 'UPS789EF'),
(7, 'UPSGHI78'),
(8, 'DHL456CD'),
(9, 'DHLJKL90'),
(11, 'DHLABC12'),
(12, 'UPSDEF56'),
(13, 'UPS789EF'),
(14, 'UPSXYZ34');


