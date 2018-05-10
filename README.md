## DockerでRails環境を手っ取り早く構築するためのファイルセット

### ファイル一覧
* Dockerfile : railsコンテナ(web)用の設定(ひとまずrubyを入れる)
* Gemfile : コンテナ内でrailsをインストールするための設定
* docker-compose.yml : railsコンテナ(web)とpostgresqlコンテナ（db)の設定
* Gemfile.lock : とりあえず必要
* .env: パスワードファイル（パスワードは適当に変えてね）
* config-database.yml: railsプロジェクトを作った後で設定するconfig/database.yml
* dot.gitignore: .gitigmore のサンプルファイル

### 使い方
ひとまずコマンドだけを書いときます。
* % docker-compose run web rails new . --force --database=postgresql
* % docker-compose build
* % cp config-database.yml config/database.yml
* % docker-compose up
* (Ctrl-Cでプロセスを落とす)
* % docker-compose run web rake db:create
* % docker-compose up
これでrailsサーバが立ち上がっているはず。
* % mv dot.gitignore .gitignore 
