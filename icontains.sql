-- запрос icontains
SELECT * FROM "users_user" WHERE UPPER("users_user"."first_name"::text) LIKE UPPER('%олег%');