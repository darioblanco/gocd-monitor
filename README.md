# gocd-monitor
Docker container for karmats gocd-monitor

## How to use this image

```
$ docker build -t gocd-monitor .
$ docker run -it --rm --name gocd-monitor gocd-monitor
```

You can also provide environment variables, for instance

```
$ docker run -it --rm -e GOCD_SERVER_URL=https://myserver.gocd -e GOCD_USER gocduser -e GOCD_PASSWORD mypassword --name gocd-monitor gocd-monitor
```

List of GOCD variables (with defaults)
GOCD_MONITOR_PORT 3000
GOCD_MONITOR_DEVPORT 3001
GOCD_SERVER_URL https://ci.example.com
GOCD_USER admin
GOCD_PASSWORD password
GOCD_MONITOR_POLLING_INTERVAL 30
GOCD_MONITOR_SWITCH_PAGES_INTERVAL 0

## Read logs

```
$ docker logs --follow gocd-monitor
```
