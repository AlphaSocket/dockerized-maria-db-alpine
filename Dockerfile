#
# Do not change content here, image automatically built
#
FROM alpine:latest

ARG BUILD_COMMIT
ARG BUILD_DATE

ENV \
	GENERAL_DOCKER_USERS_DEV="03192859189254" \
	GENERAL_DOCKER_USERS_PRD="alphasocket" \
	GENERAL_DOCKER_USER="alphasocket" \
	GENERAL_DOCKER_REGISTRIES_DEV="docker.io" \
	GENERAL_DOCKER_REGISTRIES_PRD="docker.io" \
	GENERAL_DOCKER_REGISTRY="docker.io" \
	GENERAL_KEYS_TRUE="True" \
	GENERAL_KEYS_FALSE="False" \
	GENERAL_KEYS_DEV="dev" \
	GENERAL_KEYS_PRD="prd" \
	BUILD_USER="03192859189254" \
	BUILD_REGISTRY="docker.io" \
	BUILD_REPO="https://github.com/alphaSocket/dockerized-mariad-db-alpine" \
	BUILD_BRANCH="latest" \
	BUILD_VERSION="latest" \
	BUILD_ENV="prd" \
	BUILD_FROM="alpine:latest" \
	BUILD_NAME="mariad-db-alpine" \
	BUILD_MARIADB_PORT="3306" \
	BUILD_PORTS_ADDITIONAL="" \
	BUILD_PORTS_MAIN="3306" \
	BUILD_CMD="mysqld" \
	BUILD_PATHS_TEMPLATES="/usr/local/templates" \
	SETUP_PATHS_BINARIES="/usr/local/bin" \
	SETUP_PATHS_SETUP="/usr/local/bin/setup" \
	SETUP_PATHS_CONFIG="/usr/local/bin/config" \
	SETUP_DEPENDENCIES_SETUP="" \
	SETUP_DEPENDENCIES_CONFIG="" \
	SETUP_DEPENDENCIES_RUNTIME="mariadb mariadb-client tzdata" \
	CONFIG_REDINESS_TEST="true" \
	CONFIG_LIVENESS_TEST="true" \
	CONFIG_GROUPS_ADDITIONAL_ID="1001" \
	CONFIG_GROUPS_ADDITIONAL_NAME="" \
	CONFIG_GROUPS_MAIN_ID="1053" \
	CONFIG_GROUPS_MAIN_NAME="mariadb" \
	CONFIG_USERS_ADDITIONAL_ID="1001" \
	CONFIG_USERS_ADDITIONAL_NAME="" \
	CONFIG_USERS_ADDITIONAL_GROUPS="" \
	CONFIG_USERS_MAIN_ID="1053" \
	CONFIG_USERS_MAIN_NAME="mariadb" \
	CONFIG_USERS_MAIN_GROUPS="mariadb" \
	CONFIG_PATHS_CONTAINER_STATUS="/tmp/container_status" \
	CONFIG_PATHS_DATA_MARIADB="/var/lib/mysql" \
	CONFIG_PATHS_TEMPLATES_MARIADB_INIT="/usr/local/templates/init.sql" \
	CONFIG_PATHS_CONFIG_MARIADB="/etc/mysql" \
	CONFIG_PATHS_CONFIG_MARIADB_MAIN="/etc/mysql/my.cnf" \
	CONFIG_MARIADB_SERVER_MAX_ALLOWED_PACKET="32M" \
	CONFIG_MARIADB_ROOT_PASS="rootPass" \
	CONFIG_MARIADB_DEFAULT_USER="defaultUser" \
	CONFIG_MARIADB_DEFAULT_PASS="defaultUserPass" \
	CONFIG_MARIADB_DEFAULT_DB_NAME="defaultDbName" \
	CONFIG_MARIADB_DEFAULT_DB_CHARSET="utf8mb4" \
	CONFIG_MARIADB_DEFAULT_DB_ENCODING="utf8mb4_unicode_ci"
ADD imports/bin/docker-config /usr/local/bin/docker-config
ADD imports/bin/docker-run /usr/local/bin/docker-run
ADD imports/bin/docker-rediness-test /usr/local/bin/docker-rediness-test
ADD imports/bin/docker-liveness-test /usr/local/bin/docker-liveness-test
ADD imports/bin/setup /usr/local/bin/setup/1519599290
ADD imports/bin/config /usr/local/bin/config/1519599290
ADD imports/templates/init.sql /usr/local/templates/init.sql


RUN chmod +x -R /usr/local/bin && \
    sync && \
    /usr/local/bin/setup/1519599290 1>/dev/stdout 2>/dev/stderr

EXPOSE 3306 


ENTRYPOINT ["/bin/sh", "-c"]
CMD ["/usr/local/bin/docker-run"]

LABEL \
    org.label-schema.vcs-ref="$BUILD_COMMIT" \
    org.label-schema.vcs-url="https://github.com/alphaSocket/dockerized-mariad-db-alpine"