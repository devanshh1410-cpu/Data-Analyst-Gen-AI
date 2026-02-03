-- 1. DATABASE SETUP

CREATE DATABASE world_one_table;
USE world_one_table;

-- 2. CREATE SINGLE MASTER TABLE
CREATE TABLE world_master (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    CountryName VARCHAR(50),
    Continent VARCHAR(20),
    Region VARCHAR(30),
    CountryPopulation BIGINT,
    LifeExpectancy FLOAT,
    GNP FLOAT,
    CityName VARCHAR(50),      -- City Information
    CityPopulation INT,        -- City Information
    PrimaryLanguage VARCHAR(30)-- Language Information
);

-- 3. INSERT 50+ ROWS (DATASET)

-- ==================== ASIA (31 Countries to satisfy Q2) ====================
-- Note: Q2 requires >30 countries in a continent. We are adding 1 city per country for most, 
-- but multiple cities for big countries to satisfy Q1 (Count cities).

INSERT INTO world_master (CountryName, Continent, Region, CountryPopulation, LifeExpectancy, GNP, CityName, CityPopulation, PrimaryLanguage) VALUES
('China', 'Asia', 'Eastern Asia', 1277558000, 71.4, 982268.00, 'Shanghai', 9696300, 'Chinese'),
('China', 'Asia', 'Eastern Asia', 1277558000, 71.4, 982268.00, 'Beijing', 7472000, 'Chinese'), -- 2nd City for China
('India', 'Asia', 'Southern and Central Asia', 1013662000, 62.5, 447114.00, 'Mumbai', 10500000, 'Hindi'),
('India', 'Asia', 'Southern and Central Asia', 1013662000, 62.5, 447114.00, 'Delhi', 7206704, 'Hindi'),   -- 2nd City for India
('Japan', 'Asia', 'Eastern Asia', 126714000, 80.7, 3787042.00, 'Tokyo', 7980230, 'Japanese'),
('Japan', 'Asia', 'Eastern Asia', 126714000, 80.7, 3787042.00, 'Osaka', 2595674, 'Japanese'),  -- 2nd City for Japan
('Indonesia', 'Asia', 'Southeast Asia', 212107000, 68.0, 84982.00, 'Jakarta', 9604900, 'Bahasa'),
('Pakistan', 'Asia', 'Southern and Central Asia', 156483000, 61.1, 61289.00, 'Karachi', 9269265, 'Urdu'),
('Bangladesh', 'Asia', 'Southern and Central Asia', 129155000, 60.2, 32852.00, 'Dhaka', 3612850, 'Bengali'),
('Vietnam', 'Asia', 'Southeast Asia', 79832000, 69.3, 21929.00, 'Ho Chi Minh City', 3980000, 'Vietnamese'),
('Philippines', 'Asia', 'Southeast Asia', 75967000, 67.5, 65107.00, 'Manila', 1581082, 'Tagalog'),
('Iran', 'Asia', 'Southern and Central Asia', 67702000, 69.7, 195746.00, 'Teheran', 6758845, 'Persian'),
('Turkey', 'Asia', 'Middle East', 66591000, 71.0, 210721.00, 'Istanbul', 8787958, 'Turkish'),
('Thailand', 'Asia', 'Southeast Asia', 61399000, 68.6, 116416.00, 'Bangkok', 6320174, 'Thai'),
('South Korea', 'Asia', 'Eastern Asia', 46844000, 74.4, 320749.00, 'Seoul', 9981619, 'Korean'),
('Iraq', 'Asia', 'Middle East', 23115000, 66.5, 11500.00, 'Baghdad', 4336000, 'Arabic'),
('Nepal', 'Asia', 'Southern and Central Asia', 23930000, 57.8, 4768.00, 'Kathmandu', 535000, 'Nepali'),
('Afghanistan', 'Asia', 'Southern and Central Asia', 22720000, 45.9, 5976.00, 'Kabul', 1780000, 'Pashto'),
('Malaysia', 'Asia', 'Southeast Asia', 22244000, 70.8, 69213.00, 'Kuala Lumpur', 1297526, 'Malay'),
('Saudi Arabia', 'Asia', 'Middle East', 21607000, 67.8, 137635.00, 'Riyadh', 3324000, 'Arabic'),
('North Korea', 'Asia', 'Eastern Asia', 24039000, 70.7, 5332.00, 'Pyongyang', 2484000, 'Korean'),
('Taiwan', 'Asia', 'Eastern Asia', 22256000, 76.4, 256254.00, 'Taipei', 2641312, 'Chinese'),
('Syria', 'Asia', 'Middle East', 16125000, 68.5, 65984.00, 'Damascus', 1549000, 'Arabic'),
('Sri Lanka', 'Asia', 'Southern and Central Asia', 18827000, 71.8, 15706.00, 'Colombo', 648000, 'Sinhala'),
('Kazakhstan', 'Asia', 'Southern and Central Asia', 16223000, 63.2, 24375.00, 'Almaty', 1129400, 'Kazakh'),
('Yemen', 'Asia', 'Middle East', 18112000, 59.8, 6041.00, 'Sanaa', 1303000, 'Arabic'),
('Cambodia', 'Asia', 'Southeast Asia', 11168000, 56.5, 5121.00, 'Phnom Penh', 570000, 'Khmer'),
('Israel', 'Asia', 'Middle East', 6217000, 78.6, 97477.00, 'Jerusalem', 633700, 'Hebrew'),
('Hong Kong', 'Asia', 'Eastern Asia', 6782000, 79.5, 163261.00, 'Victoria', 1300000, 'Chinese'),
('Jordan', 'Asia', 'Middle East', 5083000, 77.4, 7526.00, 'Amman', 1275857, 'Arabic'),
('Laos', 'Asia', 'Southeast Asia', 5433000, 53.1, 1292.00, 'Vientiane', 531800, 'Lao'),
('Singapore', 'Asia', 'Southeast Asia', 3567000, 80.1, 86503.00, 'Singapore', 3567000, 'Chinese'),
('Mongolia', 'Asia', 'Eastern Asia', 2662000, 62.5, 1043.00, 'Ulan Bator', 760077, 'Mongolian'),
('Myanmar', 'Asia', 'Southeast Asia', 45611000, 54.9, 180375.00, 'Yangon', 3361700, 'Burmese'),

-- ==================== NORTH AMERICA ====================
('United States', 'North America', 'North America', 278357000, 77.1, 8510700.00, 'New York', 8008278, 'English'),
('United States', 'North America', 'North America', 278357000, 77.1, 8510700.00, 'Los Angeles', 3694820, 'English'), -- 2nd City
('Canada', 'North America', 'North America', 31147000, 79.4, 598862.00, 'Toronto', 688275, 'English'),
('Canada', 'North America', 'North America', 31147000, 79.4, 598862.00, 'Montreal', 1016376, 'French'),   -- 2nd City
('Mexico', 'North America', 'Central America', 98881000, 71.5, 414972.00, 'Mexico City', 8591309, 'Spanish'),

-- ==================== EUROPE ====================
('Germany', 'Europe', 'Western Europe', 82164700, 77.4, 2133367.00, 'Berlin', 3386667, 'German'),
('Germany', 'Europe', 'Western Europe', 82164700, 77.4, 2133367.00, 'Munich', 1194560, 'German'), -- 2nd City
('United Kingdom', 'Europe', 'British Islands', 59623400, 77.7, 1378330.00, 'London', 7285000, 'English'),
('France', 'Europe', 'Western Europe', 59225700, 78.8, 1424285.00, 'Paris', 2125246, 'French'),
('Italy', 'Europe', 'Southern Europe', 57680000, 79.0, 1161755.00, 'Roma', 2643581, 'Italian'),
('Russia', 'Europe', 'Eastern Europe', 146934000, 67.2, 276608.00, 'Moscow', 8389200, 'Russian'),

-- ==================== SOUTH AMERICA ====================
('Brazil', 'South America', 'South America', 170115000, 62.9, 776739.00, 'Sao Paulo', 9968485, 'Portuguese'),
('Brazil', 'South America', 'South America', 170115000, 62.9, 776739.00, 'Rio de Janeiro', 5598953, 'Portuguese'), -- 2nd City
('Argentina', 'South America', 'South America', 37032000, 75.1, 340238.00, 'Buenos Aires', 2982146, 'Spanish'),

-- ==================== AFRICA ====================
('Nigeria', 'Africa', 'Western Africa', 111506000, 51.6, 65707.00, 'Lagos', 1518000, 'English'),
('Egypt', 'Africa', 'Northern Africa', 68470000, 63.3, 82710.00, 'Cairo', 6789479, 'Arabic'),
('South Africa', 'Africa', 'Southern Africa', 40377000, 51.1, 116729.00, 'Cape Town', 2352121, 'Afrikaans'),

-- ==================== OCEANIA ====================
('Australia', 'Oceania', 'Australia and New Zealand', 18886000, 79.8, 351182.00, 'Sydney', 3276207, 'English'),
('Australia', 'Oceania', 'Australia and New Zealand', 18886000, 79.8, 351182.00, 'Melbourne', 2865329, 'English'), -- 2nd City
('New Zealand', 'Oceania', 'Australia and New Zealand', 3862000, 77.8, 39170.00, 'Auckland', 381800, 'English');
 select * from world_master;
 ------------------------------------------------------------------------------------
 -- Question 1 : Count how many cities are there in each country?
 select countryname  , count(cityname) as cnt from world_master
 group by countryname
 order by  countryname asc;
 ------------------------------------------------------------------------------------
 -- Question 2 : Display all continents having more than 30 countries
SELECT Continent, COUNT(CountryName) AS Country_Count
FROM world_master
GROUP BY Continent
HAVING Country_Count > 30;
---------------------------------------------------------------------------------
-- Question 3 : List regions whose total population exceeds 200 million.
select region, SUM(countrypopulation) as total_pop from world_master
group by region
having total_pop  > 200000000;
---------------------------------------------------------------------------------
-- Question 4 : Find the top 5 continents by average GNP per country.
select continent ,avg(GNP) as avg_GNP from world_master
group by continent
order by avg_GNP desc
limit 5;
----------------------------------------------------------------------------------
-- Question 5 : Find the total number of official languages spoken in each continent.
select continent , count(PrimaryLanguage) as official_languages 
from world_master
group by continent;
----------------------------------------------------------------------------------
-- Question 6 : Find the maximum and minimum GNP for each continent.
select continent , max(GNP) as Max_GNP, Min(GNP) Min_GNP
from world_master
group by continent;
----------------------------------------------------------------------------------
-- Question 7 : Find the country with the highest average city population.
SELECT CountryName, AVG(CityPopulation) AS Avg_City_Pop
FROM world_master
GROUP BY CountryName
ORDER BY Avg_City_Pop DESC
LIMIT 1;
--------------------------------------------------------------------------------------
-- Question 8 : List continents where the average city population is greater than 200,000.
SELECT Continent, AVG(CityPopulation) AS Avg_City_Pop
FROM world_master
GROUP BY Continent
HAVING Avg_City_Pop > 200000;
-----------------------------------------------------------------------------------
-- Question 9 : Find the total population and average life expectancy for each continent, ordered by average life expectancy descending.
SELECT 
    Continent, 
    SUM(DISTINCT CountryPopulation) AS Total_Population, 
    AVG(LifeExpectancy) AS Avg_Life_Expectancy
FROM world_master
GROUP BY Continent
ORDER BY Avg_Life_Expectancy DESC;
-----------------------------------------------------------------------------------
-- Question 10 : Find the top 3 continents with the highest average life expectancy, but only include those where the total population is over 200 million.

SELECT Continent, 
       AVG(LifeExpectancy) AS Avg_Life_Expectancy,
       SUM(DISTINCT CountryPopulation) AS Total_Population
FROM world_master
GROUP BY Continent
HAVING Total_Population > 200000000
ORDER BY Avg_Life_Expectancy DESC
LIMIT 3;
