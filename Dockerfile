FROM alpine:3.7
LABEL MAINTAINER="Harvey Hu <magicdog20@gmail.com>"
COPY start.sh /start.sh
RUN apk add --no-cache postfix && chmod +x /start.sh
CMD ["sh","-c","/start.sh"]
EXPOSE 25

