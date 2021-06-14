init:
	composer update && chown -R dan:www-data ./storage && chmod -R 775 ./storage && cp .env.example .env && php artisan key:generate && sudo php artisan passport:install

serve:
	sudo php artisan serve

migrate-seed:
	docker-compose exec app php artisan migrate:fresh --seed

seed:
	docker-compose exec app php artisan db:seed