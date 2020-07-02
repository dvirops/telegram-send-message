FROM alpine
RUN apk add --no-cache curl bash
ADD run.sh /run.sh
ENTRYPOINT [ "/run.sh" ]