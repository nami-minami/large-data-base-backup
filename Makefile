redeploy:
	@docker compose down --remove-orphans;docker compose build; docker compose up -d
ps:
	@docker compose ps

migrate:
	@docker compose exec db sh -c "cd /test_db; mysql --defaults-extra-file=/db-access.cnf < employees.sql"
