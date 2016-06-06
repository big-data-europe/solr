#!/bin/bash
zkcli=$SOLR_HOME/server/scripts/cloud-scripts/zkcli.sh 
SOLR_CONFIG_DIR=$SOLR_HOME/server/solr/configsets/basic_configs/conf/

mkdir -p /var/lib/solr
$zkcli -zkhost zookeeper:2181/solr -cmd upconfig -confdir $SOLR_CONFIG_DIR -confname basic_config
$zkcli -zkhost zookeeper:2181/solr -cmd putfile /solr.xml $SOLR_HOME/server/solr/solr.xml

exec $@
