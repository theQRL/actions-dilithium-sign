FROM ubuntu:latest
RUN apt-get update && apt-get upgrade -y && apt-get install -y git golang-go

RUN git clone https://github.com/theQRL/qrlft.git
WORKDIR /qrlft
RUN go mod download
RUN go build
COPY . .

ENTRYPOINT ["/qrlft/entrypoint.sh"]

