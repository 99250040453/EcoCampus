# EcoCampus
Smart Sustainable Campus Management System with environmental issue reporting, green activities, and sustainability analytics.

## Database Module - EcoCampus

### Database Name
ecocampus

### Technologies Used
- MySQL
- MySQL Workbench
- SQL

### Database Tables

1. student - Stores student details.
2. issue_report - Stores environmental issues reported on campus.
3. activity - Stores green activities organized on campus.
4. participation - Tracks student participation in green activities.
5. green_points - Stores points awarded to students.
6. waste_record - Stores waste quantity in kilograms.
7. water_record - Stores water consumption in litres.
8. energy_record - Stores energy consumption in kWh.
9. tree_record - Stores tree-planting records.

### Sustainability Dashboard

The database supports sustainability statistics, including:
- Total students
- Environmental issues by status
- Total waste collected
- Water consumption
- Energy consumption
- Student green points and leaderboard
- Activity participation
- Total trees planted

### Database Relationships

- student -> issue_report
- student -> participation
- activity -> participation
- student -> green_points

### Testing

SQL queries are available in dashboard_queries.sql.
Sample records are available in sample_data.sql.
Table definitions are available in schema.sql.

Note: Sample data is used for development and testing.
