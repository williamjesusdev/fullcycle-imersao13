FROM golang:1.20-alpine

WORKDIR /app

COPY go.* ./

RUN go mod download && go mod verify

COPY *.go ./

RUN go build -o /fullcycle

ENTRYPOINT ["/fullcycle"]