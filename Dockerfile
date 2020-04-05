ARG go_version=1.14

FROM golang:${go_version}

WORKDIR /app

RUN go get -u github.com/cespare/reflex

# cache /go/pkg/mod for faster go mod calls

ENTRYPOINT ["reflex", "-s", "-r", ".go", "--"]
