USE ecocampus;

-- Sample students
INSERT INTO student (name, email, department) VALUES
('Arun', 'arun@example.com', 'CSE'),
('Priya', 'priya@example.com', 'ECE'),
('Kumar', 'kumar@example.com', 'IT');

-- Sample activities
INSERT INTO activity (activity_name, description, activity_date, points) VALUES
('Tree Plantation', 'Planting trees around campus', '2026-10-10', 20),
('Campus Clean-up', 'Cleaning campus surroundings', '2026-10-12', 15),
('Plastic-Free Campus', 'Reducing single-use plastic', '2026-10-15', 10);

-- Sample participation
INSERT INTO participation
(student_id, activity_id, participation_status) VALUES
(1, 1, 'Completed'),
(2, 2, 'Completed'),
(3, 3, 'Registered');

-- Sample green points
INSERT INTO green_points (student_id, points, reason) VALUES
(1, 20, 'Tree Plantation'),
(2, 15, 'Campus Clean-up'),
(3, 10, 'Plastic-Free Campus');

-- Sample waste records
INSERT INTO waste_record
(waste_type, quantity_kg, record_date, location) VALUES
('Plastic', 12.50, '2026-10-10', 'Main Block'),
('Paper', 8.00, '2026-10-12', 'Library'),
('Organic', 20.00, '2026-10-15', 'Canteen');

-- Sample water records
INSERT INTO water_record (quantity_litres, record_date, location) VALUES
(1500, '2026-10-10', 'Hostel'),
(1200, '2026-10-12', 'Main Block'),
(1000, '2026-10-15', 'Library');

-- Sample energy records
INSERT INTO energy_record (quantity_kwh, record_date, location) VALUES
(450, '2026-10-10', 'Main Block'),
(380, '2026-10-12', 'Library'),
(420, '2026-10-15', 'Hostel');

-- Sample issue reports
INSERT INTO issue_report
(student_id, title, description, location, category, status) VALUES
(1, 'Leaking Tap', 'Water is leaking continuously',
 'Main Block', 'Water', 'Reported'),
(2, 'Plastic Waste', 'Plastic waste needs collection',
 'Canteen', 'Waste', 'In Progress'),
(3, 'Lights Left On', 'Lights remain on in empty rooms',
 'Library', 'Energy', 'Resolved');
 -- Sample tree-planting records
INSERT INTO tree_record
(quantity, location, record_date, activity_name)
VALUES
(10, 'Main Campus', '2026-10-10', 'Tree Plantation'),
(15, 'College Garden', '2026-10-12', 'Green Campus Drive'),
(5, 'Library Garden', '2026-10-15', 'Tree Plantation');