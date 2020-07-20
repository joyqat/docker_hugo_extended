# docker_hugo_extended

# THIS PROJECT IS DEPRECATED
Use https://github.com/klakegg/docker-hugo instead.

[![](https://images.microbadger.com/badges/image/joyqat/hugo.svg)](https://microbadger.com/images/joyqat/hugo)  [![](https://images.microbadger.com/badges/version/joyqat/hugo.svg)](https://microbadger.com/images/joyqat/hugo)

[Hugo-extended](https://github.com/gohugoio/hugo) in docker using alpine

# Usage

```shell
docker run --name hugo -v path/to/hugoproject:/site joyqat/hugo:version hugo
```

Or build docker image yourself:

```shell
git clone https://github.com/joyqat/docker_hugo_extended.git && cd docker_hugo_extended
docker build . -t hugo
docker run --name hugo -v path/to/hugoproject:/site hugo hugo
```

Then you can get a `public` folder for deployment.

After that, you can remove the docker container using:
```shell
docker rm -f hugo
```
Or regenerate using:
```shell
docker start hugo
```

You can also uncomment `pygments` line in `Dockerfile` to install `pygments` in case you need it.

If you want preview your site use hugo builtin web server, you can run:
```shell
docker run --name hugo -p port:1313 -v path/to/hugoproject:/site joyqat/hugo:version hugo server
```
Then you can visit http://localhost:port for a preview.
You may refer to [official doc](https://gohugo.io/commands/) for advanced usages.
