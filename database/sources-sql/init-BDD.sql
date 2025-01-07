DROP DATABASE IF EXISTS mediateq;
CREATE DATABASE IF NOT EXISTS mediateq DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

DROP USER IF EXISTS "mediateq-web"@"%";
CREATE USER "mediateq-web"@"%" IDENTIFIED BY "medi@teq-w3b";
GRANT SELECT ON mediateq.* TO "mediateq-web"@"%";

DROP USER IF EXISTS "mediateq-admin"@"%";
CREATE USER "mediateq-admin"@"%" IDENTIFIED BY "medi@teq-@dm1n";
GRANT ALL ON mediateq.* TO "mediateq-admin"@"%" WITH GRANT OPTION;
FLUSH PRIVILEGES;

USE mediateq;

