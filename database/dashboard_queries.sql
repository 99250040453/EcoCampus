USE ecocampus;

-- 1. Total students
SELECT COUNT(*) AS total_students
FROM student;

-- 2. Issue reports grouped by status
SELECT status, COUNT(*) AS total_reports
FROM issue_report
GROUP BY status;

-- 3. Total waste collected in kg
SELECT SUM(quantity_kg) AS total_waste_kg
FROM waste_record;

-- 4. Total water usage in litres
SELECT SUM(quantity_litres) AS total_water_litres
FROM water_record;

-- 5. Total energy consumption in kWh
SELECT SUM(quantity_kwh) AS total_energy_kwh
FROM energy_record;

-- 6. Total green points
SELECT SUM(points) AS total_green_points
FROM green_points;

-- 7. Student leaderboard
SELECT
    s.student_id,
    s.name,
    COALESCE(SUM(g.points), 0) AS total_points
FROM student s
LEFT JOIN green_points g
    ON s.student_id = g.student_id
GROUP BY s.student_id, s.name
ORDER BY total_points DESC;

-- 8. Activity participation
SELECT
    a.activity_name,
    COUNT(p.participation_id) AS total_participants
FROM activity a
LEFT JOIN participation p
    ON a.activity_id = p.activity_id
GROUP BY a.activity_id, a.activity_name;
-- 9. Total Trees Planted
SELECT COALESCE(SUM(quantity), 0) AS total_trees_planted
FROM tree_record;