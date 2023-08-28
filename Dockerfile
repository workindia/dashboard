# Use an official Go image as the base image
FROM golang:1.17

# Set the working directory inside the container
WORKDIR /app

RUN git clone https://github.com/workindia/dashboard.git --branch v2.7.0-cronfix .

RUN pwd

RUN cd dashboard

# Copy the entire repository into the container
COPY . .

# Build the Go application
RUN go build -o app

# Specify the command to run the application
CMD ["./app"]
