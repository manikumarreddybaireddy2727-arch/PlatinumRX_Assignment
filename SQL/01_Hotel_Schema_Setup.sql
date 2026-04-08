DROP TABLE IF EXISTS bookings;
DROP TABLE IF EXISTS items;
DROP TABLE IF EXISTS booking_items;

CREATE TABLE bookings (
    booking_id INTEGER,
    user_id INTEGER,
    room_id INTEGER,
    booking_date DATE
);

CREATE TABLE items (
    item_id INTEGER,
    item_name TEXT,
    rate INTEGER
);

CREATE TABLE booking_items (
    booking_id INTEGER,
    item_id INTEGER,
    quantity INTEGER
);

INSERT INTO bookings VALUES (1, 101, 201, '2021-11-01');
INSERT INTO bookings VALUES (2, 102, 202, '2021-11-05');
INSERT INTO bookings VALUES (3, 103, 203, '2021-11-10');

INSERT INTO items VALUES (1, 'Food', 200);
INSERT INTO items VALUES (2, 'Drinks', 100);

INSERT INTO booking_items VALUES (1, 1, 2);
INSERT INTO booking_items VALUES (2, 2, 3);
INSERT INTO booking_items VALUES (3, 1, 5);
