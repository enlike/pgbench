-- запрос icontains
SELECT * FROM "accounts_user" WHERE UPPER("accounts_user"."username"::text) LIKE UPPER('%cons%');