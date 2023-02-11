FROM node:lts-buster

RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  imagemagick \
  python \
  webp && \
  rm -rf /var/lib/apt/lists/*

COPY package.json .

RUN npm install 

COPY . .

EXPOSE 5000

CMD ["node", "next.js"]

