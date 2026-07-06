FROM  devkitpro/devkita64:latest  as  builder

# install dependencies
RUN   apt-get update \
  &&  apt-get install -y --no-install-recommends python3-pip \
  &&  pip install --break-system-packages keystone-engine \
  &&  rm -rf /var/lib/apt/lists/*

WORKDIR  /app/

ENV  DEVKITPRO  /opt/devkitpro
ENTRYPOINT  make
