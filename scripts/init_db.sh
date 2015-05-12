echo "Running custom init script"

gosu postgres postgres --single <<- EOSQL
    create user $USERNAME with password '$PASSWORD' nocreateuser nocreatedb;
    create database $DATABASE with owner=$USERNAME;
    GRANT ALL PRIVILEGES ON DATABASE $DATABASE TO $USERNAME;
EOSQL

echo "Custom init script complete."

