migration:
	@read -p "Enter migration name:" name; \
		migrate create -ext sql -dir db/migrations -seq $$name 
migrate:
	migrate -source file://db/migrations \
		-database 'mysql://mitsu:secret@tcp(db:3306)/go_local'  up
rollback:
	migrate -source file://db/migrations \
		-database 'mysql://mitsu:secret@tcp(db:3306)/go_local'  down
drop:
	migrate -source file://db/migrations \
		-database 'mysql://mitsu:secret@tcp(db:3306)/go_local'  drop
sqlc:
	sqlc generate