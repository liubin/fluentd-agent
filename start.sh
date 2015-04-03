#!/bin/sh

echo $ELASTIC_HOST
echo $ELASTIC_PORT

sed -i -e "s/ELASTIC_HOST/${ELASTIC_HOST}/g" /etc/td-agent/td-agent.conf
sed -i -e "s/ELASTIC_PORT/${ELASTIC_PORT}/g" /etc/td-agent/td-agent.conf

td-agent