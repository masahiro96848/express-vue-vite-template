# express-vue-vite-template
フロントエンドはvue、バックエンドはexpress、DBはMysqlを使ったテンプレート

### envをcopy
``` 
cp .env.example .env
cp api/models/settings/.env.example api/models/settings/.env
```

### dockerの立ち上げ
```
docker compose build
docker compose up -d
```

### docker-compose.ymlのapiにcommandを追加
```
command: yarn nodemon

```

### バックエンドのapiコンテナに入ってnpmをインストール
```
docker exec -it api_container sh
npm install
http://localhost:3000/api/tests
{"data":"get_tests実行"}が表示していればOK!

### frontendコンテナに入ってnpmをインストール
```
docker exec -it frontend sh  
cd frontend/  
npm install  
npm run dev  

http://localhost:5173/ 
アクセスして表示されればOK!
```
