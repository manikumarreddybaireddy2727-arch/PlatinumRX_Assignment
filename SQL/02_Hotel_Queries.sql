-- Q1: Last booked room
SELECT * FROM bookings
ORDER BY booking_date DESC
LIMIT 1;

-- Q2: Billing in November
SELECT 
    b.booking_id,
    SUM(bi.quantity * i.rate) AS total_bill
FROM bookings b
JOIN booking_items bi ON b.booking_id = bi.booking_id
JOIN items i ON bi.item_id = i.item_id
WHERE strftime('%m', b.booking_date) = '11'
GROUP BY b.booking_id;

-- Q3: Bills > 1000
SELECT 
    b.booking_id,
    SUM(bi.quantity * i.rate) AS total_bill
FROM bookings b
JOIN booking_items bi ON b.booking_id = bi.booking_id
JOIN items i ON bi.item_id = i.item_id
GROUP BY b.booking_id
HAVING SUM(bi.quantity * i.rate) > 1000;

-- Q4: Most & Least ordered items
SELECT 
    i.item_name,
    SUM(bi.quantity) AS total_quantity
FROM booking_items bi
JOIN items i ON bi.item_id = i.item_id
GROUP BY i.item_name
ORDER BY total_quantity DESC;

-- Q5: 2nd highest bill
SELECT 
    b.booking_id,
    SUM(bi.quantity * i.rate) AS total_bill
FROM bookings b
JOIN booking_items bi ON b.booking_id = bi.booking_id
JOIN items i ON bi.item_id = i.item_id
GROUP BY b.booking_id
ORDER BY total_bill DESC
LIMIT 1 OFFSET 1;
