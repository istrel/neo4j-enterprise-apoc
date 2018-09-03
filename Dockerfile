FROM neo4j:3.4.6-enterprise

RUN mv plugins /plugins && ln -s /plugins

RUN wget https://github.com/neo4j-contrib/neo4j-apoc-procedures/releases/download/3.4.0.1/apoc-3.4.0.1-all.jar -O /plugins/apoc-3.4.0.1-all.jar

EXPOSE 7474 7687

CMD ["neo4j"]
