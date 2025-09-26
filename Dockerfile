FROM debian:stable-slim

# Install dependencies (correct package name is fortune-mod)
RUN apt-get update && apt-get install -y \
    cowsay \
    fortune-mod \
    netcat-openbsd \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY wisecow.sh .
RUN chmod +x wisecow.sh

EXPOSE 4499

CMD ["bash", "./wisecow.sh"]
