CREATE DATABASE IF NOT EXISTS ecocampus;
USE ecocampus;

CREATE TABLE IF NOT EXISTS student (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    department VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS issue_report (
    report_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    title VARCHAR(150) NOT NULL,
    description TEXT,
    location VARCHAR(150),
    category VARCHAR(50),
    status ENUM('Reported', 'In Progress', 'Resolved')
        DEFAULT 'Reported',
    reported_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (student_id) REFERENCES student(student_id)
);

CREATE TABLE IF NOT EXISTS activity (
    activity_id INT AUTO_INCREMENT PRIMARY KEY,
    activity_name VARCHAR(150) NOT NULL,
    description TEXT,
    activity_date DATE,
    points INT DEFAULT 0
);

CREATE TABLE IF NOT EXISTS participation (
    participation_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT NOT NULL,
    activity_id INT NOT NULL,
    participation_status ENUM('Registered', 'Completed')
        DEFAULT 'Registered',
    FOREIGN KEY (student_id) REFERENCES student(student_id),
    FOREIGN KEY (activity_id) REFERENCES activity(activity_id)
);

CREATE TABLE IF NOT EXISTS green_points (
    points_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT NOT NULL,
    points INT NOT NULL DEFAULT 0,
    reason VARCHAR(200),
    awarded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (student_id) REFERENCES student(student_id)
);

CREATE TABLE IF NOT EXISTS waste_record (
    waste_id INT AUTO_INCREMENT PRIMARY KEY,
    waste_type VARCHAR(100) NOT NULL,
    quantity_kg DECIMAL(10,2) NOT NULL DEFAULT 0,
    record_date DATE NOT NULL,
    location VARCHAR(150)
);

CREATE TABLE IF NOT EXISTS water_record (
    water_id INT AUTO_INCREMENT PRIMARY KEY,
    quantity_litres DECIMAL(12,2) NOT NULL DEFAULT 0,
    record_date DATE NOT NULL,
    location VARCHAR(150)
);

CREATE TABLE IF NOT EXISTS energy_record (
    energy_id INT AUTO_INCREMENT PRIMARY KEY,
    quantity_kwh DECIMAL(12,2) NOT NULL DEFAULT 0,
    record_date DATE NOT NULL,
    location VARCHAR(150)
);

CREATE TABLE IF NOT EXISTS tree_record (
    tree_id INT AUTO_INCREMENT PRIMARY KEY,
    quantity INT NOT NULL DEFAULT 1,
    location VARCHAR(150),
    record_date DATE NOT NULL,
    activity_name VARCHAR(150),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);