init:
	docker-compose run web bundle install
	docker-compose run web bundle exec rails new . --force --database=mysql --skip-bundle
build:
	docker-compose build
run:
	docker-compose up -d  
shell-web:
	docker-compose exec web bash
	
stop:
	docker-compose stop
down:
	docker-compose down

mysql:
	docker-compose exec db bash -c 'MYSQL_PWD=password mysql -u root'
