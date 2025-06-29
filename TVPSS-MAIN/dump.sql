-- Create dummy data for the 'users' table
INSERT INTO users (username, email, password_hash, first_name, last_name, phone_number, date_of_birth, address, created_at, updated_at, user_type)
VALUES 
('adminuser', 'admin@example.com', 'hashed_password_123', 'John', 'Doe', '1234567890', '1990-01-01', '123 Admin Street', NOW(), NOW(), 'admin'),
('schooladmin', 'school@example.com', 'hashed_password_456', 'Jane', 'Smith', '0987654321', '1985-06-15', '456 School Road', NOW(), NOW(), 'school_admin'),
('studentuser', 'student@example.com', 'hashed_password_789', 'Michael', 'Johnson', '1122334455', '2000-12-10', '789 Student Avenue', NOW(), NOW(), 'student');

-- Create dummy data for the 'students' table
INSERT INTO students (user_id, school_id, achievement, created_at, updated_at)
VALUES
(3, 1, 'Top Scorer in Mathematics', NOW(), NOW());

-- Create dummy data for the 'equipment' table
INSERT INTO equipment (name, description, quantity, location_id, created_at, updated_at)
VALUES
('Laptop', 'Dell XPS 13 Laptop', 10, 1, NOW(), NOW()),
('Projector', 'Epson Projector for classrooms', 5, 1, NOW(), NOW());

-- Create dummy data for the 'schoolinfo' table
INSERT INTO schoolinfo (school_name, address, contact_number, created_at, updated_at)
VALUES
('Sunrise School', '123 School Lane', '0123456789', NOW(), NOW());

-- Create dummy data for the 'donations' table
INSERT INTO donations (user_id, amount, status, created_at, updated_at)
VALUES
(2, 500, 'Completed', NOW(), NOW()),
(1, 200, 'Pending', NOW(), NOW());

-- Create dummy data for the 'eq_follow_ups' table
INSERT INTO eq_follow_ups (equipment_id, follow_up_date, notes, created_at, updated_at)
VALUES
(1, '2025-01-01', 'Laptop maintenance scheduled', NOW(), NOW()),
(2, '2025-02-15', 'Projector repair required', NOW(), NOW());

-- Create dummy data for the 'student_achievements' table
INSERT INTO student_achievements (student_id, achievement_type, description, date, created_at, updated_at)
VALUES
(1, 'Academic', 'Best in class for physics', '2025-05-30', NOW(), NOW()),
(3, 'Sport', 'Football Team Captain', '2025-06-01', NOW(), NOW());

-- Create dummy data for the 'certificate_templates' table
INSERT INTO certificate_templates (name, file_path, created_at, updated_at)
VALUES
('Best Student Certificate', '/certificates/best_student_template.pdf', NOW(), NOW()),
('Sports Achievement Certificate', '/certificates/sports_achievement_template.pdf', NOW(), NOW());

-- Create dummy data for the 'eq_locations' table (assuming equipment location details)
INSERT INTO eq_locations (location_name, created_at, updated_at)
VALUES
('Main Hall', NOW(), NOW()),
('Classroom A', NOW(), NOW());

-- Create dummy data for the 'student_certificates' table (assuming this is a relation for certificates issued to students)
INSERT INTO student_certificates (student_id, certificate_template_id, issue_date, created_at, updated_at)
VALUES
(1, 1, '2025-06-05', NOW(), NOW()),
(3, 2, '2025-06-05', NOW(), NOW());

-- Add dummy payment records to the 'payments' table (if it exists)
INSERT INTO payments (donation_id, amount, status, payment_date, created_at, updated_at)
VALUES
(1, 500, 'Completed', '2025-06-01', NOW(), NOW()),
(2, 200, 'Pending', '2025-06-02', NOW(), NOW());

-- Create dummy data for the 'users' table for authentication testing
INSERT INTO users (username, email, password_hash, first_name, last_name, phone_number, date_of_birth, address, created_at, updated_at, user_type)
VALUES
('admin', 'admin@example.com', 'hashed_password', 'Admin', 'User', '1234567890', '1980-01-01', 'Admin Address', NOW(), NOW(), 'admin'),
('user1', 'user1@example.com', 'hashed_password', 'User', 'One', '1231231234', '1990-05-05', 'User Address 1', NOW(), NOW(), 'student');

-- Create dummy data for the 'school_version' table
INSERT INTO school_version (school_info_id, version, agency1_name, agency2_name, agencyManager1_name, agencyManager2_name, recordEquipment, tvpssStudio, recInSchool, recInOutSchool, greenScreen, isFillSchoolName, isTvpssLogo, isUploadYoutube, isCollabAgency, tvpssLogo, created_at, updated_at)
VALUES
(1, 1, 'Agency One', 'Agency Two', 'Manager One', 'Manager Two', 'Ada', 'Ada', 'Ada', 'Tiada', 'Ada', 'Tiada', 'Ada', 'Tiada', 'Logo1.jpg', NOW(), NOW());

-- If there are relationships like 'many-to-many' you can add dummy data for pivot tables as well.

-- Final commit statement
COMMIT;
