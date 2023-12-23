#!/bin/bash
curl http://localhost:8080/ant \
-H 'content-type: application/json; charset=utf-8' \
-d 'Bob Morane'

curl http://localhost:8080/cow \
-H 'content-type: application/json; charset=utf-8' \
-d 'Bill Balantine'

curl http://localhost:8080/elephant \
-H 'content-type: application/json; charset=utf-8' \
-d 'John Doe'

curl http://localhost:8080/tiger \
-H 'content-type: application/json; charset=utf-8' \
-d 'Jane Doe'