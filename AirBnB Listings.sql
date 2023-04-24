
SELECT *
FROM PersonalProject..AirBnB

--To find cities with the highest and lowest listings

SELECT city, COUNT(host_location) AS total_city_listings 
FROM PersonalProject..AirBnB
GROUP BY city
ORDER BY total_city_listings DESC

--Getting information on the most expensive and least expensive cities
SELECT city, CAST(AVG(price) AS INTEGER) as avg_price
FROM PersonalProject..AirBnB
GROUP BY city
ORDER BY avg_price DESC


-- Cities with Poor Response Time

SELECT city, AVG(CASE WHEN host_response_time = 'within an hour' THEN 1
						WHEN host_response_time = 'within a few hours' THEN 2
						WHEN host_response_time = 'within a day' THEN 3
						ELSE 4
					END) AS avg_response_time
FROM PersonalProject..AirBnB
GROUP BY city
ORDER BY avg_response_time DESC


--Finding the most popular neighbourhood

SELECT city, neighbourhood, COUNT(*) AS num_listings
FROM PersonalProject..AirBnB
GROUP BY city, neighbourhood
ORDER BY num_listings DESC


-- Find the host with the most listings
SELECT city, host_id, COUNT(*) AS num_listings
FROM PersonalProject..AirBnB
GROUP BY city, host_id 
ORDER BY num_listings DESC

