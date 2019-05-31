ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

ARG CGATE_VERSION

RUN apk add --no-cache openjdk8-jre \
  && wget http://updates.clipsal.com/ClipsalSoftwareDownload/mainsite/cis/technical/CGate/cgate-$CGATE_VERSION.zip

RUN unzip /cgate-$CGATE_VERSION.zip \
  && rm cgate-$CGATE_VERSION.zip

EXPOSE 20023 20024 20025 20026 20123

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
