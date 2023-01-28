FROM node:14.16.1 as fe-builder
RUN apt-get update && \
    apt-get install -y \
        unzip \
        curl \
    && apt-get clean \
    && curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
    && unzip awscliv2.zip \
    && ./aws/install \
    && rm -rf \
        awscliv2.zip \
    && apt-get -y purge curl \
    && apt-get -y purge unzip

COPY ./s3-sync.sh /
COPY ts-redux-react-realworld-example-app /app

WORKDIR /app
RUN npm clean-install
RUN npm run build

RUN chmod +x /s3-sync.sh
ENTRYPOINT [ "/bin/sh", "/s3-sync.sh" ]

#FROM nginx:latest
#COPY --from=fe-builder /app/build /usr/share/nginx/html



