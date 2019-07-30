# docker_hugo_extended

[Hugo-extended](https://github.com/gohugoio/hugo) in docker using alpine

# Usage

```shell
docker run hugo -v path/to/hugoproject:/site joyqat/hugo:0.56.1
docker rm -f $(docker ps -a | grep joyqat/hugo | awk '{print $1}')
```

Or build docker image yourself:

```shell
docker build . -t hugo
docker run hugo -v path/to/hugoproject:/site hugo
docker rm -f $(docker ps -a | grep hugo | awk '{print $1}')
```

Then you can get a public folder to deploy to your web server.

