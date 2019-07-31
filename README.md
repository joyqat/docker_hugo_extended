# docker_hugo_extended

[![](https://images.microbadger.com/badges/image/joyqat/hugo.svg)](https://microbadger.com/images/joyqat/hugo)  [![](https://images.microbadger.com/badges/version/joyqat/hugo.svg)](https://microbadger.com/images/joyqat/hugo)

[Hugo-extended](https://github.com/gohugoio/hugo) in docker using alpine

# Usage

```shell
docker run --name hugo -v path/to/hugoproject:/site joyqat/hugo:0.56.1 hugo
```

Or build docker image yourself:

```shell
docker build . -t hugo
docker run --name hugo -v path/to/hugoproject:/site hugo hugo
```

Then you can get a public folder for deployment.

After that, you can remove the docker container using:
```shell
docker rm -f hugo
```
Or regenerate using:
```shell
docker start hugo
```

You can also uncomment `pygments` line in `Dockerfile` to install `pygments` in case you need it.
