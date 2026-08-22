l-- Top 10 countries/regions by cardiovascular deaths (2015+)
SELECT Entity, Year, `Deaths - Cardiovascular diseases - Sex: Both - Age: All Ages (Number)` as Deaths
FROM cardio_death
WHERE Year >= 2015
ORDER BY Deaths DESC
LIMIT 10;

-- Total cardiovascular deaths by year
SELECT Year, SUM(`Deaths - Cardiovascular diseases - Sex: Both - Age: All Ages (Number)`) as Total_Deaths
FROM cardio_death
GROUP BY Year
ORDER BY Year;

-- Countries with highest average deaths
SELECT Entity, AVG(`Deaths - Cardiovascular diseases - Sex: Both - Age: All Ages (Number)`) as Avg_Deaths
FROM cardio_death
WHERE Year >= 2015
GROUP BY Entity
ORDER BY Avg_Deaths DESC
LIMIT 5;