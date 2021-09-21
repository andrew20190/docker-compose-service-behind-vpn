FROM alpine
COPY demo-service.sh .
RUN chmod +x demo-service.sh
# tcpdump is optional
RUN apk add curl tcpdump
CMD sh demo-service.sh