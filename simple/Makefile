# db environment
DB_DOCKERFILE=Dockerfile-db
DB_IMAGE=mysql-database
DB_CONTAINER_NAME=example-database
DB_DATA_DIR=${PWD}/Data
DB_SEED_DIR=${PWD}/Seed
DB_DATABASE=example
DB_SEED_FILE=/Seed/${DB_CONTAINER_NAME}.sql
DB_CONTAINER_ID=$(shell docker ps -aq -f 'name=${DB_CONTAINER_NAME}')
DB_HOST=$(shell docker inspect --format '{{ .NetworkSettings.IPAddress }}' ${DB_CONTAINER_ID})
DB_PORT=3306
DB_USER=root
DB_PASSWORD=password

# =============
# Build Image
# =============
image_build:
	docker build -t ${DB_IMAGE} -f ${DB_DOCKERFILE} .

# ===================
# Database Container
# ===================
sql_test: db_stop db_clean
	docker run \
	-d \
	--name ${DB_CONTAINER_NAME} \
	-e MYSQL_ROOT_PASSWORD=${DB_PASSWORD} \
	-e MYSQL_DATABASE=${DB_DATABASE} \
	--expose ${DB_PORT} \
	-v ${DB_SEED_DIR}:/docker-entrypoint-initdb.d \
	${DB_IMAGE} \
	--character-set-server=utf8mb4 --collation-server=utf8mb4_bin

sql_test_connect:
	docker run --name mysql-shell -it \
	--rm mysql sh -c 'exec mysql -h${DB_HOST} -P${DB_PORT} -u${DB_USER} -p${DB_PASSWORD} --default-character-set=utf8mb4'

db_stop:
	@docker stop ${DB_CONTAINER_NAME} || true && docker rm ${DB_CONTAINER_NAME} || true

db_clean:
	rm -rf ${DB_DATA_DIR}
	mkdir -p ${DB_DATA_DIR}
