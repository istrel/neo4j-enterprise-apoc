FROM neo4j:3.5.7-enterprise

RUN mv plugins /plugins && ln -s /plugins

RUN curl -L -o /plugins/apoc-3.5.0.4-all.jar https://github.com/neo4j-contrib/neo4j-apoc-procedures/releases/download/3.5.0.4/apoc-3.5.0.4-all.jar

EXPOSE 7474 7687

CMD ["neo4j"]
