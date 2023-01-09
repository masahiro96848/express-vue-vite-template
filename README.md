# express-vue-vite-template
フロントエンドはvue、バックエンドはexpress、DBはMysqlを使ったテンプレートです

### git clone
```
git clone git@github.com:masahiro96848/express-vue-vite-template.git
```

### envをcopy
``` 
cp .env.example .env
```

### apiコンテナを一時的に起動
```
docker-compose run --rm --no-deps api /bin/bash
npm install
npm install cors
npm i -D @types/cors @types/express @types/node ts-loader typescript webpack webpack-cli webpack-node-externals
touch tsconfig.json
```

``` tsconfig.json
{
  "compilerOptions": {
    "sourceMap": true,
    "noImplicitAny": true,
    "module": "commonjs",
    "target": "ES2019",
    "lib": [
      "ES2019",
      "dom"
    ],
    "baseUrl": ".",
    "paths": {
      "src/*": [
        "src/*"
      ],
    },
    "outDir": "./dist",
    "moduleResolution": "node",
    "removeComments": true,
    "strict": true,
    "noUnusedLocals": true,
    "noImplicitReturns": true,
    "noFallthroughCasesInSwitch": true,
    "strictFunctionTypes": false,
    "experimentalDecorators": true,
    "emitDecoratorMetadata": true,
    "esModuleInterop": true,
  },
  "include": [
    "src/**/*",
  ],
  "exclude": [
    "node_modules",
  ],
}

```

```
# コンテナを出て
docker-compose up -d
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
