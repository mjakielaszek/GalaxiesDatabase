-- delete on cascade example
select * from Planets
select * from Plots where Planet_Name ='Jupiter'
delete Planets where Planet_Name ='Jupiter'

-- update on cascade example		
select * from Buyers
select * from Offers
update Buyers 
set Buyer_Email = 'test'
where Buyer_Email = 'alice@email.com' 
