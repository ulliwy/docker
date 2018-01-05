FROM debian

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y golang
RUN apt-get install -y git
RUN apt-get install -y sqlite3

ENV GOPATH=/gogs
ENV USER=root

WORKDIR $GOPATH/src/github.com/gogits
RUN git clone --depth=1 -b develop https://github.com/gogits/gogs
RUN go get -u -tags sqlite github.com/gogits/gogs
WORKDIR $GOPATH/src/github.com/gogits/gogs
RUN go build -tags sqlite

EXPOSE 3000

ENTRYPOINT ./gogs web