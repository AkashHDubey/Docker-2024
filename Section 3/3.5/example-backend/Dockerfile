FROM golang:1.16.15

ENV PORT=8080

WORKDIR /usr/src/app

COPY . .

RUN go build

RUN go test ./...

RUN adduser --disabled-password dubeaka

USER dubeaka

CMD ["./server"]
