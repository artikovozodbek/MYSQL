-- 3️⃣ Bemorlar jadvali (yangilangan ma'lumotlar bilan)

CREATE TABLE bemorlar (
    id INT PRIMARY KEY AUTO_INCREMENT,
    fullName TEXT,
    age INT,
    disease TEXT,
    isMarried BOOLEAN,
    gender TEXT
);

INSERT INTO bemorlar (fullName, age, disease, isMarried, gender) VALUES
(1, "Ali Valiyev", 34, "Qandli diabet", 1, "Erkak"),
(2, "Dilnoza Karimova", 29, "Yuqori qon bosimi", 0, "Ayol"),
(3, "Sardor Toshpo'latov", 45, "Astma", 1, "Erkak"),
(4, "Gulnoza Otaboyeva", 31, "Artrit", 1, "Ayol"),
(5, "Javlonbek Madrahimov", 50, "Yurak-tomir kasalligi", 1, "Erkak"),
(6, "Madina Rasulova", 27, "Migren", 0, "Ayol"),
(7, "Odilbek Beknazarov", 38, "Gepatit", 1, "Erkak"),
(8, "Zarina Ro'zimatova", 41, "Anemiya", 1, "Ayol"),
(9, "Bekzod Fayzullayev", 30, "Saraton", 1, "Erkak"),
(10, "Shahlo Xo'jaeva", 35, "Qandli diabet", 1, "Ayol"),
(11, "Bobur Sobirov", 53, "Yuqori qon bosimi", 1, "Erkak"),
(12, "Nigina Omonova", 23, "Astma", 0, "Ayol"),
(13, "Hasan Boymatov", 48, "Artrit", 1, "Erkak"),
(14, "Ozoda Abdullayeva", 33, "Yurak-tomir kasalligi", 1, "Ayol"),
(15, "Sherzod Qosimov", 40, "Migren", 1, "Erkak"),
(16, "Muxlisa Yuldosheva", 25, "Gepatit", 0, "Ayol"),
(17, "Olimjon Qayumov", 36, "Anemiya", 1, "Erkak"),
(18, "Ziyoda Ermatova", 44, "Saraton", 1, "Ayol"),
(19, "Muzaffar Xudoyberganov", 37, "Qandli diabet", 1, "Erkak"),
(20, "Shirin Nosirova", 28, "Yuqori qon bosimi", 0, "Ayol");

-- Query 1: Eng ko'p uchraydigan kasallik
SELECT disease, COUNT(*) AS count
FROM bemorlar
GROUP BY disease
ORDER BY count DESC
LIMIT 1;

-- Query 2: Yoshi 40dan katta turmush qurgan erkak bemorlar
SELECT * FROM bemorlar
WHERE age > 40 AND isMarried = 1 AND gender = 'Erkak';

-- Query 3: Yoshi 30dan kichik, turmush qurmagan ayol bemorlarning kasalliklari
SELECT disease FROM bemorlar
WHERE age < 30 AND isMarried = 0 AND gender = 'Ayol';

-- Query 4: Ayol va erkak bemorlar soni
SELECT gender, COUNT(*) AS count
FROM bemorlar
GROUP BY gender;

-- Query 5: Yoshi 40dan kichik "Qandli diabet" kasalligiga chalingan bemorlar, yosh bo'yicha kamayish tartibida
SELECT * FROM bemorlar
WHERE age < 40 AND disease = 'Qandli diabet'
ORDER BY age DESC;
