FROM debian:buster-slim

LABEL MAINTAINER 'Daniel Cascales <devopstech253@gmail.com>'

RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y curl unzip wget git build-essential

# install Go
ENV GOLANG_VERSION 1.12.4
RUN wget https://golang.org/dl/go$GOLANG_VERSION.linux-amd64.tar.gz && \
  tar -C /usr/local -xzf go$GOLANG_VERSION.linux-amd64.tar.gz && \
  rm go${GOLANG_VERSION}.linux-amd64.tar.gz

ENV PATH $PATH:/usr/local/go/bin
ENV GOROOT /usr/local/go
ENV GOPATH=/root/go
ENV PATH $PATH:$GOPATH/bin

# install nodejs
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs


#Install x-scss 

RUN npm install -g sass && \
    npm install -D --save autoprefixer && \
    npm install -D --save postcss-cli


# install hugo for specific version
#ENV HUGO_VERSION 0.62.2
#RUN curl -Lf -o hugo.zip https://github.com/gohugoio/hugo/archive/v${HUGO_VERSION}.zip && \
#  unzip hugo.zip && \
#  cd hugo-${HUGO_VERSION} && \
#  GOBIN=/usr/local/bin go install -tags extended && \
#  cd .. && rm -fr hugo* && \
#  hugo version

#Install hugo latest

RUN git clone https://github.com/gohugoio/hugo.git && \
    cd hugo && \ 
    go install --tags extended


WORKDIR /src

#Default port is 1313, but I change it to 443. 
EXPOSE 80 1313 443


#I run the command hugo server in docker-compose --> command: ...

#CMD ["hugo","server","--disableFastRender","--bind=0.0.0.0","--themesDir=../..","--buildDrafts","--baseURL=https://docs.devopstech.org","--port=80"] 
