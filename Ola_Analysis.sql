USE ola;
create view Confirmed_Booking as
select * from bookings
where Booking_Status = 'Success'
order by Booking_Status ;

1. Retrieve all successful bookings:
select * from Confirmed_Booking;

2. Find the average ride distance for each vehicle type:
Create View ride_distance_for_each_vehicle As 
SELECT Vehicle_Type, AVG(Ride_Distance) as avg_distance FROM bookings GROUP BY
Vehicle_Type;

select * from ride_distance_for_each_vehicle;

3. Get the total number of cancelled rides by customers:
create view Canceled_ride_by_customer as
SELECT COUNT(*) FROM bookings
WHERE Booking_Status = 'canceled by Customer';

select * from Canceled_ride_by_customer;

4. List the top 5 customers who booked the highest number of rides:
Create View Top_5_Customers As
select Customer_ID , count(Booking_ID) as total_rides
from bookings
group by Customer_ID
Order by total_rides DESC limit 5;

select * from Top_5_Customers;

5. Get the number of rides cancelled by drivers due to personal and car-related issues:
Create View Rides_cancelled_by_Drivers_P_C_Issues As
SELECT COUNT(*) FROM bookings
WHERE canceled_Rides_by_Driver = 'Personal & Car related issue';

SELECT * from Rides_cancelled_by_Drivers_P_C_Issues;

6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
Create View Max_Min_Driver_Rating As
select Max(Driver_Ratings) as Max_rating, 
Min(Driver_Ratings) as Min_rating
from bookings where Vehicle_Type = 'Prime Sedan';

select * from Max_Min_Driver_Rating;

7. Retrieve all rides where payment was made using UPI:
Create View UPI_Payment As
select * from bookings
where Payment_Method = 'UPI';

select * from UPI_Payment;

8. Find the average customer rating per vehicle type:
Create View AVG_Cust_Rating As
select Vehicle_Type, avg(Customer_Rating) as avg_customer_rating from bookings
group by Vehicle_Type;

select * from AVG_Cust_Rating;

9. Calculate the total booking value of rides completed successfully:
Create View total_successful_ride_value As
select SUM(Booking_Value) as total_successful_ride_value
from bookings
 where Booking_Status = 'Success';

SELECT * from total_successful_ride_value;

10. List all incomplete rides along with the reason:
Create View Incomplete_Rides_Reason As
SELECT Booking_ID, Incomplete_Rides_Reason
FROM bookings
WHERE Incomplete_Rides = 'Yes';

select * from Incomplete_Rides_Reason;

11.Find customers who cancelled more than 2 rides
SELECT Customer_ID, COUNT(*) as Cancellations
FROM bookings WHERE Booking_Status = 'Canceled by Customer'
GROUP BY Customer_ID HAVING Cancellations > 2
ORDER BY Cancellations DESC;

12.Top 10 drop locations by number of rides
select Drop_Location , count(*) as rides 
from bookings group by Drop_Location 
order by rides DESC limit 10;


13.Top 10 Pickup locations by number of rides
select Pickup_Location , count(*) as rides 
from bookings group by Pickup_Location 
order by rides DESC limit 10;

14.Find peak booking hours (which hour has most rides)
SELECT HOUR(Time) as Hour, COUNT(*) as Total_Rides
FROM bookings GROUP BY Hour ORDER BY Total_Rides DESC;

15.Find the most popular payment method
SELECT Payment_Method, COUNT(*) as Count
FROM bookings WHERE Payment_Method IS NOT NULL
GROUP BY Payment_Method ORDER BY Count DESC;
