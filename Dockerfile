FROM alpine
RUN apk update
RUN apk upgrade

COPY start.sh /start.sh
RUN wget -c https://img.nging.coscms.com/nging/v5.3.3/nging_linux_amd64.tar.gz -O /home/nging_linux_amd64.tar.gz \
  && tar -zxvf /home/nging_linux_amd64.tar.gz -C /home \
  && rm -rf /home/nging_linux_amd64.tar.gz \
  && chmod +x /start.sh

WORKDIR /home/nging_linux_amd64

# VOLUME [ "/home/nging_linux_amd64/data/cache", "/home/nging_linux_amd64/data/ftpdir", "/home/nging_linux_amd64/data/logs", "/home/nging_linux_amd64/data/sm2", "/home/nging_linux_amd64/myconfig", "/home/nging_linux_amd64/public" ]

CMD [ "/start.sh" ]
