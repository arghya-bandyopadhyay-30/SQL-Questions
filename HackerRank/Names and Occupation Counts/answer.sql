(
    SELECT CONCAT(NAME, "(", LEFT(OCCUPATION, 1), ")") AS Result
    FROM OCCUPATIONS
)
UNION
(
    SELECT CONCAT("There are a total of ", COUNT(OCCUPATION), " ", LOWER(OCCUPATION), "s.") AS Result
    FROM OCCUPATIONS
    GROUP BY OCCUPATION
)
ORDER BY Result;
