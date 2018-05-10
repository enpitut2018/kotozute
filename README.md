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

1. このフォルダをクローンして、ディレクトリ名を書き換えて、githubのリモートレポジトリを変更する

```
 % git clone https://github.com/enpitut2018/docker-rails-conf
 % cd .. 
 % mv docker-rails-conf <新しいディレクトリ名>
 % cd <新しいディレクトリ名>
 % git remote set-url origin <新しいレポジトリ名>
```
2. railsプロジェクトを作ります
> % docker-compose run web rails new . --force --database=postgresql
3. ビルドします
> % docker-compose build
4. データベース設定をする（config/database.ymlは適当に書き換えてね）
> % cp config-database.yml config/database.yml
5. railsサーバを立ち上げる
> * % docker-compose up
> * (Ctrl-Cでプロセスを落とす)
6. データベースを作る
> * % docker-compose run web rake db:create
7. railsサーバを立ち上げる
> % docker-compose up
8. git無視ファイル設定をdot.gitignoreをコピーして、自分用に書き換える。
> % mv dot.gitignore .gitignore 
