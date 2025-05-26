kill -9 `lsof -ti :8080`
nohup java -jar dgp-admin.jar > dgp-admin.log 2>&1 &
tail -fn 500 dgp-admin.log
