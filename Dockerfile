FROM golang AS build

COPY main.go .

RUN CGO_ENABLED=0 GOOS=linux go build -a -ldflags '-s' -installsuffix cgo -o /app main.go

FROM scratch

COPY --from=build /app /

CMD ["/app"]
