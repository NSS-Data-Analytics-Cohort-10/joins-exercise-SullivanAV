-- ** Movie Database project. See the file movies_erd for table\column info. **

-- 1. Give the name, release year, and worldwide gross of the lowest grossing movie.
SELECT film_title, release_year, worldwide_gross
FROM specs
INNER JOIN revenue
USING (movie_id)
ORDER BY worldwide_gross
Limit 1
--"Semi-Tough"	1977	37187139

-- 2. What year has the highest average imdb rating?
SELECT avg(imdb_rating) AS avg_rating, release_year
FROM specs
INNER JOIN rating
USING (movie_id)
GROUP BY release_year
ORDER BY avg_rating DESC;

--7.4500000000000000	1991

-- 3. What is the highest grossing G-rated movie? Which company distributed it?
SELECT film_title, company_name, mpaa_rating
FROM specs
INNER JOIN revenue
USING (movie_id)
INNER JOIN distributors
GROUP BY release_year
ORDER BY avg_rating DESC;

-- 4. Write a query that returns, for each distributor in the distributors table, the distributor name and the number of movies associated with that distributor in the movies 
-- table. Your result set should include all of the distributors, whether or not they have any movies in the movies table.

SELECT
FROM
INNER JOIN
USING
GROUP BY
ORDER BY

-- 5. Write a query that returns the five distributors with the highest average movie budget.
SELECT
FROM
INNER JOIN
USING
GROUP BY
ORDER BY
-- 6. How many movies in the dataset are distributed by a company which is not headquartered in California? Which of these movies has the highest imdb rating?
SELECT
FROM
INNER JOIN
USING
GROUP BY
ORDER BY
-- 7. Which have a higher average rating, movies which are over two hours long or movies which are under two hours?
SELECT length_in_min, avg(imdb_rating)
FROM specs
INNER JOIN rating
USING (movie_id)
WHERE length_in_min<120
GROUP BY length_in_min
ORDER BY avg(imdb_rating)DESC

SELECT length_in_min, avg(imdb_rating)
FROM specs
INNER JOIN rating
USING (movie_id)
WHERE length_in_min>120
GROUP BY length_in_min
ORDER BY avg(imdb_rating)DESC
--Over 2 hour movies have better ratings
