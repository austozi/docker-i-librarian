FROM ghcr.io/linuxserver/nginx:latest
LABEL maintainer=austozi
RUN apk add --update --no-cache \
  php81-gd \
  php81-curl \
  php81-intl \
  php81-xml \
  php81-mbstring \
  php81-zip \
  php81-ldap \
  php81-sodium \
  php81-sqlite3 \
  php81-sysvsem \
  php81-sysvshm \
  poppler-utils \
  ghostscript \
  tesseract-ocr \
  libreoffice
  
ARG version=5.10.4

RUN mkdir -p /i-librarian

RUN curl -o /install.tar.xz -fsSL https://github.com/mkucej/i-librarian-free/releases/download/$version/I-Librarian-$version-Linux.tar.xz
RUN tar -C /i-librarian -Jxf /install.tar.xz
RUN rm -f /install.tar.xz

COPY /root/ /
