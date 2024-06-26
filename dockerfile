FROM golang:1.18-alpine
WORKDIR /mywebsite
COPY go.mod ./

COPY . .
# Build the Go app
RUN go build -o main .

# Expose port 8080 to the outside world
EXPOSE 8080

# Command to run the executable
CMD ["./main"]
