# go

goの実行環境を検証


[goland docker](https://hub.docker.com/_/golang)

## goのdockerの動作確認

```
docker run --rm golang:1.21 go version
```

## hello world

[Go 言語を公式チュートリアルで始めてみる 1 (Tutorial: Get started with Go)ZennZenn](https://zenn.dev/harusame0616/articles/9d2474a3e4128a)

### モジュールの初期化

```
mkdir hello
cd hello
docker run --rm -it -v $PWD:/usr/src/app -v /etc/passwd:/etc/passwd:ro -u $(id -u):$(id -g) golang:1.21 bash
cd /usr/src/app
go mod init example/hello
```

### 実行

```
$ docker run --rm -it -v $PWD:/usr/src/app golang:1.21 bash
$ cd /usr/src/app
$ go run .
Hello, World!
```

## プロジェクトの初期化

該当のフォルダに移動して `init.sh <project name>` を実行
