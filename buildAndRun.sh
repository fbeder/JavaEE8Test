#!/bin/sh
mvn clean package && docker build -t com.test/JavaEE8Test .
docker rm -f JavaEE8Test || true && docker run -d -p 8080:8080 -p 4848:4848 --name JavaEE8Test com.test/JavaEE8Test 
