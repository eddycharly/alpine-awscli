FROM alpine

RUN apk -v --update add python py-pip groff less mailcap && \
    pip install --upgrade botocore && \
    pip install --upgrade awscli s3cmd python-magic && \
    apk -v --purge del py-pip && \
    rm /var/cache/apk/*
