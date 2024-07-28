FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo
ENV MONGODB_CLUSTER_ADDRESS tsw.kecxsst.mongodb.net
ENV MONGODB_USERNAME learntocodeinhindi
ENV MONGODB_PASSWORD M7ueM5PzWSvPz5Sk

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]