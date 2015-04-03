# fluentd-agent

fluentd agent running on server to collect logs and forward to log manager(dashboard)

Bundled with:
- CentOS 7
- fluentd: 0.10.61

# How to run

```
sudo docker run -e ELASTIC_HOST=172.17.0.92 -e ELASTIC_PORT=9200 -v /var/log:/var/log --name agent liubin/fluentd-agent
```


# TODOs

- Can't ues enrironment variables in config files: http://docs.fluentd.org/articles/faq#how-can-i-use-environment-variables-to-configure-parameters-dynamically

