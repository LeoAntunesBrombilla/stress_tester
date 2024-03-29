FROM golang:latest

WORKDIR /app

COPY ./go.mod ./

RUN go mod download

COPY . .

RUN go build -o main ./cmd

EXPOSE 8080

ENTRYPOINT ["./main"]