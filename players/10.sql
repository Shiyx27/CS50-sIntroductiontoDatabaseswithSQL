---In 10.sql, write SQL query to answer a question of your choice. This query should:
--Make use of AS to rename a column
--Involve at least condition, using WHERE
--Sort by at least one column using ORDER BY
SELECT "id","first_name","last_name","height" AS "height(in)","weight" AS "weight(pounds)"
FROM "players"
WHERE "birth_year">2000
ORDER BY "height" DESC;

