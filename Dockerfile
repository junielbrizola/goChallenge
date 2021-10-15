FROM golang AS multistage
COPY hello.go .
RUN go build hello.go
FROM scratch
COPY --from=multistage /go/hello .
CMD ["./hello"]