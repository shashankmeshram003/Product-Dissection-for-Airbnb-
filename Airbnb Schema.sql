

Create table User(
user_id int (Primary Key) -- Unique identifier for each user
name varchar(50) --Name of the user
email varchar(100) --Email address of the user
phone int --Contact number of the user
);

Create table host(
host_id int (Primary Key) -- Unique identifier for each host
host_name varchar(50) -- Name of the host
email varchar(100) --Email of the host
phone int -- Contact number of the host
);

Create table property(
property_id int (Primary Key) -- Unique identifier for each property[span_8](start_span)[span_8](end_span)
property_name varchar(50) -- Name or title of the property[span_9](start_span)[span_9](end_span)
property_type varchar(30) -- Apartment, Villa, Homestay, Shared Room, etc.[span_10](start_span)[span_10](end_span)
location varchar(30) -- City or region where the property is located[span_11](start_span)[span_11](end_span)
host_id int -- Foreign Key referencing the host entity[span_12](start_span)[span_12](end_span)
);


Create table listing(
listing_id int (Primary Key) -- Primary Key for each listing[span_13](start_span)[span_13](end_span)
available_from date -- Start date of availability[span_14](start_span)[span_14](end_span)
available_to date -- End date of availability[span_15](start_span)[span_15](end_span)
price_per_night numeric -- Rate of the property[span_16](start_span)[span_16](end_span)
property_id int -- Foreign Key referencing property[span_17](start_span)[span_17](end_span)
);

Create table booking(
booking_id int (Primary Key) -- Unique identifier for each booking[span_18](start_span)[span_18](end_span)
booking_date timestamp -- Date (and time) when reservation was made[span_19](start_span)[span_19](end_span)
check_in date -- Check-in date[span_20](start_span)[span_20](end_span)
check_out date -- Check-out date[span_21](start_span)[span_21](end_span)
total_amount numeric -- Total amount paid for the stay[span_22](start_span)[span_22](end_span)
user_id int -- References the user entity[span_23](start_span)[span_23](end_span)
listing_id int -- References the listing entity[span_24](start_span)[span_24](end_span)
);

Create table payment(
payment_id int (Primary Key) -- Unique payment identifier[span_25](start_span)[span_25](end_span)
payment_method varchar(10) -- Option selected (UPI, Card, PayPal, Wallet, etc.)[span_26](start_span)[span_26](end_span)
payment_status varchar(20) -- SUCCESS, FAILED, PENDING, REFUNDED[span_27](start_span)[span_27](end_span)
booking_id int -- References bookings[span_28](start_span)[span_28](end_span)
);

Create table review(
review_id int (Primary Key) -- Unique identifier for each review[span_29](start_span)[span_29](end_span)
rating double precision -- Rating out of 5[span_30](start_span)[span_30](end_span)
commentss varchar -- User feedback[span_31](start_span)[span_31](end_span)
user_id int -- References users[span_32](start_span)[span_32](end_span)
property_id int -- References properties[span_33](start_span)[span_33](end_span)
);













