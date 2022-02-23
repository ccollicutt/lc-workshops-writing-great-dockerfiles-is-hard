FROM golang:1.17-alpine

WORKDIR /app

COPY tanzu-build-service-sample-apps/sample-apps/go/main.go /app/
RUN go env -w GO111MODULE=auto && go build -o main 

EXPOSE 8080
ENV PORT=8080

CMD [ "/app/main" ]