FROM alpine:3.10
LABEL maintainer="Hong-She Liang <starofrainnight@gmail.com>"

ENV LANG C.UTF-8

RUN apk -U add wget p7zip
RUN wget -O natapp.zip http://download.natapp.cn/assets/downloads/clients/2_3_9/natapp_linux_amd64_2_3_9.zip \
    && 7z x natapp.zip && chmod +x natapp && cp natapp /usr/local/bin/ && rm natapp*

CMD ["/bin/sh"]
