# Start with Go base image
FROM golang:1.25.3

# Set working directory
WORKDIR /app

# Copy application files
COPY . .

# Build the Go application
RUN go build -o web-app .

# Expose port 8080
EXPOSE 1234

# Run the application
CMD ["./web-app"]