TRUNCATE TABLE bookings RESTART IDENTITY CASCADE;

INSERT INTO bookings ("user_id", "space_id", "booking_start_date", "booking_end_date", "booking_approved", "booking_created_date") values (4, 3, '2023-01-09T02:45:57Z', '2022-06-30T04:45:54Z', true, '2022-12-02T09:50:03Z');
INSERT INTO bookings ("user_id", "space_id", "booking_start_date", "booking_end_date", "booking_approved", "booking_created_date") values (4, 5, '2022-12-31T22:19:41Z', '2022-12-24T15:02:55Z', true, '2022-09-12T11:20:20Z');
INSERT INTO bookings ("user_id", "space_id", "booking_start_date", "booking_end_date", "booking_approved", "booking_created_date") values (2, 4, '2022-04-22T13:41:26Z', '2022-08-09T05:35:34Z', true, '2022-03-03T05:06:21Z');
INSERT INTO bookings ("user_id", "space_id", "booking_start_date", "booking_end_date", "booking_approved", "booking_created_date") values (4, 5, '2022-11-01T03:07:05Z', '2022-09-03T14:52:17Z', true, '2022-02-07T20:41:59Z');
INSERT INTO bookings ("user_id", "space_id", "booking_start_date", "booking_end_date", "booking_approved", "booking_created_date") values (4, 1, '2022-02-17T16:04:24Z', '2022-06-16T06:48:58Z', true, '2022-08-03T00:35:13Z');