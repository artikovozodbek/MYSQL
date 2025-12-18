-- 1️⃣ Aeroport jadvali
CREATE DATABASE IF NOT EXISTS uy;
USE uy;

CREATE TABLE aeroport (
    id INT PRIMARY KEY AUTO_INCREMENT,
    samolyot_turi TEXT,
    uchish_sanasi DATE,
    uchish_shahri TEXT,
    qonish_shahri TEXT,
    uchish_vaqti TIME
);

INSERT INTO aeroport (samolyot_turi, uchish_sanasi, uchish_shahri, qonish_shahri, uchish_vaqti) VALUES
('Boeing', '2025-03-15', 'Samarqand', 'Toshkent', '14:30:00'),
('Airbus', '2025-04-10', 'Buxoro', 'Toshkent', '16:45:00'),
('Embraer', '2025-05-05', 'Namangan', 'Toshkent', '15:00:00'),
('Boeing', '2025-06-20', 'Fargona', 'Toshkent', '13:15:00'),
('Airbus', '2025-02-28', 'Urganch', 'Samarqand', '12:00:00'),
('Bombardier', '2025-03-22', 'Termiz', 'Toshkent', '17:30:00'),
('Boeing', '2025-04-18', 'Qarshi', 'Samarqand', '10:45:00'),
('Airbus', '2025-05-12', 'Andijon', 'Toshkent', '14:50:00'),
('SukhoiSuperjet', '2025-03-30', 'Toshkent', 'Buxoro', '09:30:00'),
('Concorde', '2025-04-25', 'Samarqand', 'Toshkent', '18:15:00');

-- Query 1: Bahor oylarida uchadigan samolyotlar (mart, aprel, may)
SELECT * FROM aeroport
WHERE uchish_sanasi BETWEEN '2025-03-01' AND '2025-05-31';

-- Query 2: Uchish vaqti 14:00-18:00 oralig'ida va qo'nish shahri Toshkent bo'lgan samolyotlarni o'chirish
DELETE FROM aeroport
WHERE uchish_vaqti BETWEEN '14:00:00' AND '18:00:00'
  AND qonish_shahri = 'Toshkent';