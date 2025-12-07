FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 22

CMD ["/start.sh"]
