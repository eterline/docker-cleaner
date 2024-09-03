
# docker-pruner

![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)
![Shell Script](https://img.shields.io/badge/shell_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white)

Clean your old docker images and layers.

## Use

make cron task for it:

```bash
  15 0 * * 7 .../path-to/docker-pruner.sh
```


## Settings

Setup gotify notification server.
```
gotify_url='http://gotify.host'
token='AWddff4d3evAkxMr'
```
Set age of containers amd images.
```
age='72h' # e.g. (10m, 1h30m)
```

## Screenshots

![Gotify Screenshot](/screenshoot.png)

