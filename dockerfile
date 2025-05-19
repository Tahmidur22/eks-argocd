FROM golang:1.20 AS base

WORKDIR /app
COPY go.mod .
RUN go mod download
COPY . .
RUN go build -o main

FROM gcr.io/distroless/base-debian11
COPY --from=base /app/main /app/main 
COPY --from=base /app/static ./static

EXPOSE 8080

CMD ["/app/main"]