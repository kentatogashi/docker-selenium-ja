# Docker Selenium Ja

日本語環境で使用できるSeleniumサーバのDockerイメージを作成する。

## Requirements

* [Docker Engine](https://docs.docker.com/engine/installation/)

## Dockerイメージ作成

このプロジェクトをCloneする。

```sh
$ git@github.com:kentatogashi/docker-selenium-ja.git
$ cd docker-selenium-ja
$ docker build -t 'kentatogashi/docker-selenium-ja' .
```

## Dockerコンテナ起動

Docker Hubに登録しているので、手早く試すのであれば、イメージ作成は必要ない。

```sh
$ docker run -dt -e -p 4444:4444 -p 5901:5901 kentatogashi/docker-selenium-ja
```

SeleniumとVNCのポート番号を変更したい時

```sh
$ export SEL_PORT=4445
$ export VNC_PORT=5902
$ docker run -dt -e SEL_PORT=$SEL_PORT -e VNC_PORT=$VNC_PORT -p $SEL_PORT:$SEL_PORT -p $VNC_PORT:$VNC_PORT kentatogashi/docker-selenium-ja
```

## 補足

デフォルト、4444番で、Selenium用、5901番で、VNCが動く。

VNCのパスワードは、secret

ブラウザは、Firefox
