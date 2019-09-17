# docker_for_mysql

## 使いかた

```
docker build -t dev_mysql .
```

バックグラウンドで起動する(環境変数でパスワードを指定しておく)
```
docker run -e MYSQL_ROOT_PASSWORD=mysql -d -p 3306:3306 mysql:8.0.17
```

ターミナルに入る

```
docker ps
docker exec -it {container ID} /bin/bash
```

MySQLターミナルに入る

```
mysql -uroot -p -h localhost
```


※ローカルよりMySQLへアクセスする場合は一度コンテナへ入り

```
hostname -i
```
でIPを確認後

```
mysql -uroot -h {確認したIP} -p
```
でログインする
