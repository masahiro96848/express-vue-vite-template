# express-vue-vite-template
フロントエンドはvue、バックエンドはexpress、DBはMysqlを使ったテンプレートです

### envをcopy
``` 
cp .env.example .env
```

### apiコンテナを一時的に起動
```
docker-compose run --rm --no-deps api /bin/bash
npm install
```

下記にアクセス。Expressという文字が出れば成功
http://localhost:3000　


### 起動済みのdbコンテナに入り、MySQLにログインする。
```
docker-compose exec db /bin/bash

==== ここからdbコンテナ内 ====
mysql -u root -p

.envに記載しているpasswordを入力

```
```
==== dbコンテナ内 ====
MySQLの文字コードを確認
mysql> show variables like 'char%';

データベースを確認
mysql>　show databases;
mysql>　use todolist;
mysql> show tables;

todolistデータベースの中身が空であることを確認

==== dbコンテナ内 ====
mysql> quit
exit
```

### SequelizeによるDBマイグレーションを実行
```
docker-compose exec api /bin/bash

==== apiコンテナ内 ====
npx sequelize-cli db:migrate

もし、Error: Cannot find module './util'が出るのであれば、node_modulesを削除して,
npm installを行い、migrateする。
```

### テーブルが作成されたことを確認
```
docker-compose exec db /bin/bash
mysql -u root -p
use todolist
show tables;
```


## vueコンテナの準備

```
docker-compose run --rm --no-deps frontend /bin/bash
npm install

正常にインストールできたら
docker compose down 
docker compose up -d

下記アクセスして、画面が表示されればOK
http://localhost:5173/
