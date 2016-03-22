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
$ docker run -dt -p 4444:4444 -p 5901:5901 kentatogashi/docker-selenium-ja
```

## 補足

4444番はSelenium用、5901番はVNC用

VNCのパスワードは、secret

ブラウザは、Firefox
