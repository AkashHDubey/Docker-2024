FROM golang:1.16.15-alpine as build-stage
ENV PORT=8080
ENV CGO_ENABLED 0
WORKDIR /usr/src/app
COPY . .
RUN go build && go test  ./...

FROM alpine:3.6
ENV PORT=8080
EXPOSE 8080
WORKDIR /usr/src/app
COPY --from=build-stage /usr/src/app/server /usr/src/app/server
CMD ["./server"]
