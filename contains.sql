-- запрос contains
SELECT * FROM "users_user" WHERE "users_user"."first_name"::text LIKE '%Олег%';