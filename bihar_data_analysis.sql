
-- Create Population Table
CREATE TABLE population (
    district_id SERIAL PRIMARY KEY,
    district_name VARCHAR(100),
    population INT,
    literacy_rate DECIMAL(5,2),
    growth_rate DECIMAL(5,2),
    year INT
);

-- Create GDP Table
CREATE TABLE gdp (
    district_id INT REFERENCES population(district_id),
    year INT,
    gdp DECIMAL(15,2),
    agriculture DECIMAL(15,2),
    industry DECIMAL(15,2),
    services DECIMAL(15,2),
    PRIMARY KEY (district_id, year)
);

-- Create Employment Table
CREATE TABLE employment (
    district_id INT REFERENCES population(district_id),
    year INT,
    unemployment_rate DECIMAL(5,2),
    labor_force_participation DECIMAL(5,2),
    PRIMARY KEY (district_id, year)
);

-- Create Agriculture Table
CREATE TABLE agriculture (
    district_id INT REFERENCES population(district_id),
    year INT,
    crop_production INT,
    irrigated_land_percentage DECIMAL(5,2),
    PRIMARY KEY (district_id, year)
);

-- Create Infrastructure Table
CREATE TABLE infrastructure (
    district_id INT REFERENCES population(district_id),
    year INT,
    roads_km INT,
    electricity_coverage_percentage DECIMAL(5,2),
    health_centers INT,
    PRIMARY KEY (district_id, year)
);

-- Insert Sample Population Data
INSERT INTO population (district_name, population, literacy_rate, growth_rate, year) VALUES
('Patna', 5838465, 70.68, 2.15, 2023),
('Gaya', 4379383, 65.34, 2.45, 2023),
('Muzaffarpur', 4801062, 68.12, 2.31, 2023),
('Bhagalpur', 3037766, 72.52, 1.95, 2023);

-- Insert Sample GDP Data
INSERT INTO gdp (district_id, year, gdp, agriculture, industry, services) VALUES
(1, 2023, 120000, 40000, 30000, 50000),
(2, 2023, 90000, 35000, 25000, 30000),
(3, 2023, 95000, 38000, 27000, 30000),
(4, 2023, 87000, 30000, 22000, 35000);

-- Insert Sample Employment Data
INSERT INTO employment (district_id, year, unemployment_rate, labor_force_participation) VALUES
(1, 2023, 6.2, 56.5),
(2, 2023, 7.8, 54.2),
(3, 2023, 6.5, 55.8),
(4, 2023, 8.1, 53.9);

-- Insert Sample Agriculture Data
INSERT INTO agriculture (district_id, year, crop_production, irrigated_land_percentage) VALUES
(1, 2023, 500000, 78.5),
(2, 2023, 420000, 75.3),
(3, 2023, 450000, 76.8),
(4, 2023, 390000, 74.2);

-- Insert Sample Infrastructure Data
INSERT INTO infrastructure (district_id, year, roads_km, electricity_coverage_percentage, health_centers) VALUES
(1, 2023, 12000, 95.6, 500),
(2, 2023, 10000, 92.4, 450),
(3, 2023, 11000, 94.2, 470),
(4, 2023, 9500, 91.8, 420);
