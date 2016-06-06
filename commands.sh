./zkcli.sh -zkhost zookeeper:2181/solr -cmd upconfig -confdir ../../solr/configsets/basic_configs/conf/ -confname basic_config
./zkcli.sh -zkhost zookeeper:2181/solr -cmd putfile /solr.xml ../../solr/solr.xml
mkdir -p /var/lib/solr

cd /usr/local/apache-solr/current && \
  bin/solr start \
  -f \
  -cloud \
  -s /var/lib/solr \
  -p 8983 \
  -z zookeeper:2181/solr
