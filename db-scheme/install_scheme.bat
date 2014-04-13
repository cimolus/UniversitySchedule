sqlplus %1/%2@%3 @1-create-tablespace.sql
sqlplus %1/%2@%3 @2-create-user.sql
sqlplus %1/%2@%3 @3-create-tables.sql
sqlplus %1/%2@%3 @4-create-relations.sql



