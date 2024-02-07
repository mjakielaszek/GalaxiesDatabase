/*
for a customer:
	- see all the certificates of his purchases
	- check to which address of his a purchase was sent to 
	- get all the plots and stars from a given stellar system under a certain value
for the site:
	- sum up value of transactions in a given month
	- get history of bids a given plot / star
	- make a summary of numbers of delivery by given employee
*/

-- get all the plots and stars from a given stellar system under a certain value
declare @maxValue int = 50000
declare @minValue int = 0
declare @system varchar(30) = 'Lunar Orbit'
select Stars.Bayer_Designation as Name, Stars.Value, Is_Star = 1, Stars.Brightness as 'Brightness or Size' from 
   (select * from Stars where System_ID = (select System_ID from Stellar_System where System_Name = @system)) Stars 
	where Stars.Is_Available = 1 and Stars.Value > @minValue and Stars.Value < @maxValue 
union
select Plots.Planet_Name, Plots.Value, Is_Star = 0, Plots.Size from 
	(select * from Planets where System_ID = (select System_ID from Stellar_System where System_Name = @system)) Planets
	join Plots on Planets.Planet_Name = Plots.Planet_Name
	where Plots.Is_Available = 1 and Plots.Value > @minValue and Plots.Value < @maxValue 
order by Value 


-- see all the certificates of his purchases
SELECT Certificates.Certificate_ID, Certificates.Is_For_Star, Certificates.Chosen_Star_Name
FROM Certificates
	JOIN Undergo
	ON Certificates.Certificate_ID = Undergo.Certificate_ID
	JOIN Deliveries
	ON Undergo.Delivery_Number = Deliveries.Delivery_Number
	JOIN Addresses
	on Deliveries.Address_ID = Addresses.Adress_ID
	Join Buyers
	on Addresses.Buyer_ID = Buyers.Buyer_ID
WHERE Buyer_Email = 'bob@email.com'



-- sum up value of transactions in a given month
SELECT SUM(Transaction_Price) AS Transaction_sum,  Count(Transaction_number) AS Number_of_transactions, MONTH(Transaction_Date) AS Month
 FROM Transactions
GROUP BY MONTH(Transaction_Date)



--make a statistics of all employees
SELECT Employees.Employee_Full_Name, Employees.Employee_Contact_Phone, Deliveries.Nr_of_Deliveries_Made, Transactions.Nr_of_Transactions_Supervised, Offers.Nr_of_Offers_Assesed
from Employees
	join (select Employee_ID, count(Delivery_Number) as Nr_of_Deliveries_Made
			from Deliveries
			group by Employee_ID) Deliveries
	on Employees.Employee_ID = Deliveries.Employee_ID
	join (select Transactions.Employee_ID, count(Transactions.Transaction_Number) as Nr_of_Transactions_Supervised
			from Transactions
			group by Employee_ID) Transactions
	on Employees.Employee_ID = Transactions.Employee_ID
	join (select Offers.Employee_ID, count(Offers.Employee_ID) as Nr_of_Offers_Assesed
			from Offers
			group by Employee_ID) Offers
	on Employees.Employee_ID = Offers.Employee_ID


/*

select Employees.Employee_ID, count(Delivery_Number) as Nr_of_Deliveries_Made
from Deliveries 
	right join Employees
	on Deliveries.Employee_ID = Employees.Employee_ID
group by Employees.Employee_ID




SELECT Employees.Employee_Full_Name, Employees.Employee_Contact_Phone, count(Deliveries.Employee_ID) as Nr_of_Deliveries_Made, 
		count(Transactions.Transaction_Number) as Nr_of_Transactions_Supervised, count(Offers.Employee_ID) as Nr_of_Offers_Assesed
from Employees
	join Deliveries
	on Employees.Employee_ID = Deliveries.Employee_ID
	join Transactions
	on Employees.Employee_ID = Transactions.Employee_ID
	join Offers
	on Employees.Employee_ID = Offers.Employee_ID
group by Employees.Employee_ID, Employees.Employee_Full_Name, Employees.Employee_Contact_Phone
order by 


select Deliveries.Employee_ID, count(Deliveries.Delivery_Number) as Nr_of_Deliveries_Made
from Deliveries
group by Employee_ID
*/

select top 5 Buyers.Buyer_Email, sum(purchases.Offer_Ammount) as Total_Spendings, addresses.Country, addresses.City, addresses.ZIP_Code, addresses.Street_Name, addresses.House_Number from Buyers
join (select * from Offers where Is_Final = 1) purchases on purchases.Buyer_ID = Buyers.Buyer_ID
join (select * from Addresses where Is_Default = 1) addresses on purchases.Buyer_ID = addresses.Buyer_ID
group by Buyers.Buyer_Email
order by Total_Spendings desc