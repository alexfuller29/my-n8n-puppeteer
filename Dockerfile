FROM n8nio/n8n:latest-debian

USER root

RUN apk add --no-cache \
  # Alpine equivalents:
  nss \
  atk \
  at-spi2-atk \
  cups-libs \
  dri2proto \
  libxcomposite \
  libxdamage \
  libxfixes \
  libxrandr \
  mesa \
  gtk+3.0 \
  alsa-lib \
  glib \
  gobject-introspection \
  libxshmfence \
  nspr \
  dbus-libs \
  cairo \
  libx11 \
  libxext \
  libxi \
  libxrender \
  libxss \
  libxtst \
  libxkbcommon \
  pango \
  wget

USER node
EXPOSE 5678

CMD ["tini", "--", "n8n"]
