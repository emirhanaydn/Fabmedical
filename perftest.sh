host="fabmedical-745662.documents.azure.com"
username="fabmedical-745662"
password="Oa00LPOsm9KztrXDWOg1aj1lNhGZzLa1KahtVCd3dHVHtrrlGW9WS8qMUwTUWEDdCvcin9Jar0xfOcWlDnBD1A=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
