FROM golang:1.12-alpine

LABEL "com.github.actions.name"="GitHub Action template for Go"
LABEL "com.github.actions.description"="GitHub Action template for Go"
LABEL "maintainer"="Galo Navarro <anglorvaroa@gmail.com>"
LABEL "repository"="https://github.com/srvaroa/go-github-action-template"

RUN apk add --no-cache git

WORKDIR /go/src/app
COPY . .
ENV GO111MODULE=on
RUN go build -o action ./cmd
ENTRYPOINT ["/go/src/app/action"]
