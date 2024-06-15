FROM golang:1.16.15
# ENV PORT=8080
# ENV REQUEST_ORIGIN="http://localhost:5000"
# ENV REDIS_HOST="redis-cache"
WORKDIR usr/src/app
COPY . .
RUN go build
RUN go test ./...
CMD ["./server"]
