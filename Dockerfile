FROM golang:1.13

ENV PORT=80
# Set a directory for the app
WORKDIR $GOPATH/src/github.com/phantien295/go-docker
# Copy all the files to the container
COPY . .

# Download all the dependencies
RUN go get -d -v ./...
# Install the package
RUN go install -v ./...

# This container exposes port 80 to the outside world
EXPOSE 80

# Run the executable
CMD ["go-docker"]
