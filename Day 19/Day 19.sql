CREATE DATABASE agri_innovate;
USE agri_innovate;
CREATE TABLE farmers (
    farmer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    hire_date DATE
);
CREATE TABLE plots (
    plot_id INT PRIMARY KEY,
    plot_name VARCHAR(100),
    farmer_id INT,
    crop_type VARCHAR(50),
    soil_type VARCHAR(50),
    FOREIGN KEY (farmer_id) REFERENCES farmers(farmer_id)
);
CREATE TABLE yields (
    yield_id INT PRIMARY KEY,
    plot_id INT,
    harvest_date DATE,
    yield_kg DECIMAL(10,2),
    weather_condition VARCHAR(50),
    FOREIGN KEY (plot_id) REFERENCES plots(plot_id)
);
CREATE TABLE irrigation_logs (
    log_id INT PRIMARY KEY,
    plot_id INT,
    irrigation_date DATE,
    water_amount_liters DECIMAL(10,2),
    FOREIGN KEY (plot_id) REFERENCES plots(plot_id)
);
INSERT INTO farmers VALUES
(1, 'Ravi', 'Kumar', 'ravi@gmail.com', '2022-01-10'),
(2, 'Sita', 'Reddy', 'sita@gmail.com', '2021-03-15'),
(3, 'Arjun', 'Naidu', 'arjun@gmail.com', '2023-06-20');
INSERT INTO plots VALUES
(101, 'West Field', 1, 'Wheat', 'Loam'),
(102, 'North Pasture', 2, 'Corn', 'Clay'),
(103, 'East Field', 3, 'Soybeans', 'Sand'),
(104, 'South Field', 1, 'Wheat', 'Clay');
INSERT INTO yields VALUES
(1, 101, '2024-01-10', 500, 'Sunny'),
(2, 101, '2024-02-15', 550, 'Rainy'),
(3, 102, '2024-01-20', 600, 'Mild'),
(4, 103, '2024-02-25', 450, 'Sunny'),
(5, 104, '2024-03-10', 700, 'Rainy');
INSERT INTO irrigation_logs VALUES
(1, 101, '2024-01-05', 1000),
(2, 101, '2024-02-01', 1200),
(3, 102, '2024-01-10', 1500),
(4, 103, '2024-02-15', 800),
(5, 104, '2024-03-01', 2000);
SELECT * FROM farmers;
SELECT * FROM plots;
SELECT * FROM yields;
SELECT * FROM irrigation_logs;
-- Task 1.1: Top 3 most productive plots
SELECT 
    p.plot_name,
    p.crop_type,
    AVG(y.yield_kg) AS average_yield_kg
FROM plots p
JOIN yields y ON p.plot_id = y.plot_id
GROUP BY p.plot_id, p.plot_name, p.crop_type
ORDER BY average_yield_kg DESC
LIMIT 3;
-- Task 1.2: Total water consumption ranking
SELECT 
    p.plot_name,
    SUM(i.water_amount_liters) AS total_water_liters,
    RANK() OVER (ORDER BY SUM(i.water_amount_liters) DESC) AS rank_position
FROM plots p
JOIN irrigation_logs i ON p.plot_id = i.plot_id
GROUP BY p.plot_id, p.plot_name;
-- Task 2.1: Avg yield by crop & weather
SELECT 
    p.crop_type,
    y.weather_condition,
    AVG(y.yield_kg) AS average_yield_kg
FROM plots p
JOIN yields y ON p.plot_id = y.plot_id
GROUP BY p.crop_type, y.weather_condition;
-- Task 2.2: Highest yielding plot per soil type
SELECT 
    soil_type,
    plot_name,
    yield_kg
FROM (
    SELECT 
        p.soil_type,
        p.plot_name,
        y.yield_kg,
        RANK() OVER (PARTITION BY p.soil_type ORDER BY y.yield_kg DESC) AS rnk
    FROM plots p
    JOIN yields y ON p.plot_id = y.plot_id
) ranked
WHERE rnk = 1;
-- Task 3.1: Farmer with lowest avg water usage
SELECT 
    f.first_name,
    f.last_name,
    AVG(i.water_amount_liters) AS average_water_liters_per_plot
FROM farmers f
JOIN plots p ON f.farmer_id = p.farmer_id
JOIN irrigation_logs i ON p.plot_id = i.plot_id
GROUP BY f.farmer_id, f.first_name, f.last_name
ORDER BY average_water_liters_per_plot ASC
LIMIT 1;
-- Task 3.2: Harvest count per month
UPDATE yields
SET harvest_date = DATE_SUB(CURDATE(), INTERVAL FLOOR(RAND()*300) DAY);
SELECT 
    DATE_FORMAT(harvest_date, '%Y-%m') AS month,
    COUNT(*) AS number_of_harvests
FROM yields
WHERE harvest_date >= DATE_SUB(CURDATE(), INTERVAL 12 MONTH)
GROUP BY month
ORDER BY month;
-- Task 4: Advanced analysis
SELECT 
    p.plot_name,
    p.crop_type,
    y.yield_kg,
    i.water_amount_liters
FROM plots p
JOIN yields y ON p.plot_id = y.plot_id
JOIN irrigation_logs i ON p.plot_id = i.plot_id
WHERE y.yield_kg < (
    SELECT AVG(y2.yield_kg)
    FROM plots p2
    JOIN yields y2 ON p2.plot_id = y2.plot_id
    WHERE p2.crop_type = p.crop_type
)
AND i.water_amount_liters > (
    SELECT AVG(i2.water_amount_liters)
    FROM plots p3
    JOIN irrigation_logs i2 ON p3.plot_id = i2.plot_id
    WHERE p3.crop_type = p.crop_type
);
SELECT p.crop_type, AVG(y.yield_kg)
FROM plots p
JOIN yields y ON p.plot_id = y.plot_id
GROUP BY p.crop_type;
SELECT p.crop_type, AVG(i.water_amount_liters)
FROM plots p
JOIN irrigation_logs i ON p.plot_id = i.plot_id
GROUP BY p.crop_type;
INSERT INTO yields VALUES
(6, 101, '2026-03-15', 300, 'Sunny');  -- low yield

INSERT INTO irrigation_logs VALUES
(6, 101, '2026-03-20', 3000); -- high water
-- Task 4 FIXED
SELECT 
    p.plot_name,
    p.crop_type,
    y.yield_kg,
    i.water_amount_liters
FROM plots p
JOIN yields y ON p.plot_id = y.plot_id
JOIN irrigation_logs i ON p.plot_id = i.plot_id
WHERE y.yield_kg < (
    SELECT AVG(y2.yield_kg)
    FROM plots p2
    JOIN yields y2 ON p2.plot_id = y2.plot_id
    WHERE p2.crop_type = p.crop_type
)
AND i.water_amount_liters > (
    SELECT AVG(i2.water_amount_liters)
    FROM plots p3
    JOIN irrigation_logs i2 ON p3.plot_id = i2.plot_id
    WHERE p3.crop_type = p.crop_type
);