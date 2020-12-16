ARG VERSION

FROM demoncat/onec-client:${VERSION}

ARG OSCRIPT_VERSION

RUN set -xe \
    && apt-get update \
    && apt-get install -y mono-complete mono-devel \
    && wget https://oscript.io/downloads/latest/x64/onescript-engine_${OSCRIPT_VERSION}_all.deb -O oscript.deb \
    && dpkg -i oscript.deb \
    && rm oscript.deb \
