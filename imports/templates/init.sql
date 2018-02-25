SET @@SESSION.SQL_LOG_BIN=0;
-- Clean users -- 
DELETE FROM mysql.user WHERE user NOT IN ('mysql.sys', 'mysqlxsys', 'root') OR host NOT IN ('localhost') ;
-- Config root user --
SET PASSWORD FOR 'root'@'localhost'=PASSWORD('${MYSQL_ROOT_PASSWORD}') ;
GRANT ALL ON *.* TO 'root'@'localhost' WITH GRANT OPTION ;
-- Clean dbs --
DROP DATABASE IF EXISTS test ;

-- Setup default db --
CREATE DATABASE IF NOT EXISTS \`$MYSQL_DATABASE\` ;
-- Setup default user --
CREATE USER '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD' ;
GRANT ALL ON \`$MYSQL_DATABASE\`.* TO '$MYSQL_USER'@'%' ;

FLUSH PRIVILEGES ;



