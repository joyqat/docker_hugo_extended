# docker_hugo_extended

[![](https://images.microbadger.com/badges/image/joyqat/hugo.svg)](https://microbadger.com/images/joyqat/hugo "Get your own image badge on microbadger.com")  [![](https://images.microbadger.com/badges/version/joyqat/hugo.svg)](https://microbadger.com/images/joyqat/hugo "Get your own version badge on microbadger.com")

[Hugo-extended](https://github.com/gohugoio/hugo) in docker using alpine

# Usage

```shell
docker run -v path/to/hugoproject:/site joyqat/hugo:0.56.1 hugo
docker rm -f $(docker ps -a | grep joyqat/hugo | awk '{print $1}')
```

Or build docker image yourself:

```shell
docker build . -t hugo
docker run -v path/to/hugoproject:/site hugo hugo
docker rm -f $(docker ps -a | grep hugo | awk '{print $1}')
```

Then you can get a public folder to deploy to your web server.

You can also uncomment `pygments` line in `Dockerfile` to install `pygments` in case you need it.
