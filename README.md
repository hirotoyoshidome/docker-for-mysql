# docker_for_mysql

## 使いかた

```
docker build -t dev_mysql .
```

バックグラウンドで起動する(環境変数でパスワードを指定しておく)
```
docker run -e MYSQL_ROOT_PASSWORD=mysql -d -p 3306:3306 dev_mysql:latest
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

Laravelより接続する際には

```
SELECT user, host, plugin FROM mysql.user;
ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'mysql';
```
# my.cnfを修正(追加)
vim /etc/mysql/my.cnf

```
default-authentication-plugin = mysql_native_password
```
