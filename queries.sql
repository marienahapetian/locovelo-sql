SELECT * FROM bikes WHERE available='yes';

SELECT * FROM bookings WHERE client_id = 1;

SELECT COUNT(*) FROM bookings;

SELECT COUNT(*) as rebooked, bike_id FROM bookings GROUP BY bike_id;

SELECT SUM(to_pay) FROM bookings;

SELECT MONTHNAME(end), SUM(to_pay) FROM bookings GROUP BY MONTHNAME(end);