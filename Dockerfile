FROM golang:alpine

WORKDIR /app

COPY main.go .

RUN go mod init app

RUN go build -o app .

CMD ["/app/app"]
