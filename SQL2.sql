-- 2️⃣ Meva jadvali

CREATE TABLE meva (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nomi TEXT,
    narxi INT,
    navi TEXT
);

INSERT INTO meva (nomi, narxi, navi) VALUES
('Olma', 15000, 'Qizil'),
('Banan', 12000, 'Sariq'),
('Apelsin', 20000, 'Toq rang'),
('Anor', 50000, 'Qizil'),
('Nok', 30000, 'Yashil'),
('Orik', 25000, 'Sariq'),
('Mandarin', 18000, 'Toq rang'),
('Gilos', 45000, 'Qizil'),
('Shaftoli', 40000, 'Sariq'),
('Uzum', 35000, 'Yashil');

-- Query 1: Narxi 10000-50000 oralig'idagi mevalar
SELECT * FROM meva
WHERE narxi BETWEEN 10000 AND 50000;

-- Query 2: Nomining uzunligi 5 bo'lgan mevalar, narxi bo'yicha kamayish tartibida
SELECT * FROM meva
WHERE CHAR_LENGTH(nomi) = 5
ORDER BY narxi DESC;