# Use an official Go image as the base image
FROM golang:1.17

# Set the working directory inside the container
WORKDIR /

# Copy the entire repository into the container
COPY . .

# Build the Go application
RUN go build -o app

# Specify the command to run the application
CMD ["./"]
