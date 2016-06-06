#!/bin/bash
SOLR_BIN=$SOLR_HOME/bin/solr
$SOLR_BIN start -f -cloud -s /var/lib/solr -p 8983 -z zookeeper:2181/solr
