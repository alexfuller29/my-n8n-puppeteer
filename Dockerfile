FROM n8nio/n8n:latest-debian

USER root

# Debian-based => apt-get
RUN apt-get update && apt-get install -y --no-install-recommends \
  libnss3 \
  libatk1.0-0 \
  libatk-bridge2.0-0 \
  libcups2 \
  libdrm2 \
  libxcomposite1 \
  libxdamage1 \
  libxfixes3 \
  libxrandr2 \
  libgbm1 \
  libgtk-3-0 \
  libasound2 \
  libglib2.0-0 \
  libgobject-2.0-0 \
  libxshmfence1 \
  libnssutil3 \
  libsmime3 \
  libnspr4 \
  libdbus-1-3 \
  libcairo2 \
  libx11-6 \
  libxext6 \
  libxi6 \
  libxrender1 \
  libxss1 \
  libxtst6 \
  libxkbcommon0 \
  libpango-1.0-0 \
  wget \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

USER node
EXPOSE 5678
CMD ["tini", "--", "n8n"]
