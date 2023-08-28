# Use an official Go runtime as the base image
FROM golang:1.17

# Set the working directory inside the container
WORKDIR /app

# Copy go.mod and go.sum to the container
COPY go.mod go.sum ./

# Download Go dependencies
RUN go mod download

# Copy the rest of the application files to the container
COPY . .

# Build the Go application
RUN go build -o app

# Specify the command to run the application
CMD ["./app"]
