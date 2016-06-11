FROM kibana:4.5.1

RUN apt-get update && apt-get install -y netcat

COPY entrypoint.sh /tmp/entrypoint.sh
RUN chmod +x /tmp/entrypoint.sh

RUN kibana plugin --install elasticsearch/marvel/latest
RUN kibana plugin --install elastic/sense

CMD ["/tmp/entrypoint.sh"]
