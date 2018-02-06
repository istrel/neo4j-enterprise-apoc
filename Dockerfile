FROM neo4j:3.3.2-enterprise

RUN mv plugins /plugins && ln -s /plugins

RUN wget https://raw.githubusercontent.com/miasvanklei/neo4j-apoc/master/apoc-3.3.0.1-all.jar -O /plugins/apoc-3.3.0.1-all.jar

EXPOSE 7474 7687

CMD ["neo4j"]