show databases;
use rostermanagementsystem;
show tables;
INSERT INTO roster_details (date, driver_name, drop_time, emp_name, location, pickup_time, shift_time, vehicle_number)
VALUES 
('2023-09-05', 'Driver 1', '09:00 AM', 'Employee 1', 'Location A', '08:30 AM', 'Morning Shift', 'ABC-123'),
('2023-09-05', 'Driver 2', '10:00 AM', 'Employee 2', 'Location B', '09:30 AM', 'Morning Shift', 'XYZ-456'),
('2023-09-05', 'Driver 3', '11:00 AM', 'Employee 3', 'Location C', '10:30 AM', 'Morning Shift', 'DEF-789'),
('2023-09-05', 'Driver 4', '01:00 PM', 'Employee 4', 'Location D', '12:30 PM', 'Afternoon Shift', 'GHI-101'),
('2023-09-05', 'Driver 5', '02:00 PM', 'Employee 5', 'Location E', '01:30 PM', 'Afternoon Shift', 'JKL-202'),
('2023-09-05', 'Driver 6', '03:00 PM', 'Employee 6', 'Location F', '02:30 PM', 'Afternoon Shift', 'MNO-303'),
('2023-09-05', 'Driver 7', '05:00 PM', 'Employee 7', 'Location G', '04:30 PM', 'Evening Shift', 'PQR-404'),
('2023-09-05', 'Driver 8', '06:00 PM', 'Employee 8', 'Location H', '05:30 PM', 'Evening Shift', 'STU-505'),
('2023-09-05', 'Driver 9', '07:00 PM', 'Employee 9', 'Location I', '06:30 PM', 'Evening Shift', 'VWX-606'),
('2023-09-05', 'Driver 10', '09:00 PM', 'Employee 10', 'Location J', '08:30 PM', 'Night Shift', 'YZA-707');


INSERT INTO users (email, password, role, username)
VALUES
('user1@example.com', 'password1', 'employee', 'user1'),
('user2@example.com', 'password2', 'manager', 'user2'),
('user3@example.com', 'password3', 'driver', 'user3'),
('user4@example.com', 'password4', 'transport', 'user4'),
('user5@example.com', 'password5', 'employee', 'user5'),
('user6@example.com', 'password6', 'manager', 'user6'),
('user7@example.com', 'password7', 'driver', 'user7'),
('user8@example.com', 'password8', 'transport', 'user8'),
('user9@example.com', 'password9', 'employee', 'user9'),
('user10@example.com', 'password10', 'manager', 'user10');

