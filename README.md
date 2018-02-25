# alphasocket/dockerized-maria-db-alpine
#### mariad-db-alpine
MariaDB service on alpine distro


| [![Build Status](https://semaphoreci.com/api/v1/alphasocket/dockerized-mariad-db-alpine/branches/latest/badge.svg)](https://semaphoreci.com/alphasocket/dockerized-mariad-db-alpine) | Size / Layers | Version |
| ----- | ----- | ----- |
| Dev image | [![](https://images.microbadger.com/badges/image/03192859189254/dockerized-mariad-db-alpine:latest.svg)](https://microbadger.com/images/03192859189254/mariad-db-alpine:latest ) | [![](https://images.microbadger.com/badges/version/03192859189254/dockerized-mariad-db-alpine:latest.svg)](https://microbadger.com/images/03192859189254/mariad-db-alpine:latest) |
| Prd image | [![](https://images.microbadger.com/badges/image/alphasocket/mariad-db-alpine:latest.svg)](https://microbadger.com/images/alphasocket/mariad-db-alpine:latest ) | [![](https://images.microbadger.com/badges/version/alphasocket/mariad-db-alpine:latest.svg)](https://microbadger.com/images/alphasocket/mariad-db-alpine:latest) |

## Branches & Versions
- latest


## Packages installed
- Runtime dependencies:
  + mariadb
  + mariadb-client
  + tzdata


## Configurable envvars
~~~
CONFIG_REDINESS_TEST="true"
CONFIG_LIVENESS_TEST="true"
CONFIG_GROUPS_ADDITIONAL_ID="1001"
CONFIG_GROUPS_ADDITIONAL_NAME=""
CONFIG_GROUPS_MAIN_ID="1053"
CONFIG_GROUPS_MAIN_NAME="mariadb"
CONFIG_USERS_ADDITIONAL_ID="1001"
CONFIG_USERS_ADDITIONAL_NAME=""
CONFIG_USERS_ADDITIONAL_GROUPS=""
CONFIG_USERS_MAIN_ID="1053"
CONFIG_USERS_MAIN_NAME="mariadb"
CONFIG_USERS_MAIN_GROUPS="mariadb"
CONFIG_PATHS_CONTAINER_STATUS="/tmp/container_status"
CONFIG_PATHS_DATA_MARIADB="/var/lib/mysql"
CONFIG_PATHS_TEMPLATES_MARIADB_INIT="/usr/local/templates/init.sql"
CONFIG_PATHS_CONFIG_MARIADB="/etc/mysql"
CONFIG_PATHS_CONFIG_MARIADB_MAIN="/etc/mysql/my.cnf"
CONFIG_MARIADB_SERVER_MAX_ALLOWED_PACKET="32M"
CONFIG_MARIADB_ROOT_PASS="rootPass"
CONFIG_MARIADB_DEFAULT_USER="defaultUser"
CONFIG_MARIADB_DEFAULT_PASS="defaultUserPass"
CONFIG_MARIADB_DEFAULT_DB_NAME="defaultDbName"
CONFIG_MARIADB_DEFAULT_DB_CHARSET="utf8mb4"
CONFIG_MARIADB_DEFAULT_DB_ENCODING="utf8mb4_unicode_ci"
~~~
