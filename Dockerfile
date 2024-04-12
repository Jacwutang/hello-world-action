# Use a base image
FROM alpine:latest

# Set the working directory
WORKDIR /app

COPY . /app

# Echo "Hello, World!" to the console
CMD ["echo", "Hello, World!"]



#docker run -it <image_id> sh

# Attach a Volume mount. Go inside /app and add a test file, it will be persisted after exiting the container
# docker run -it --mount source=hello-world-volume,target=/app 2852fc29ab02 sh

# Bind Mount (mutable changes within local FS)
# docker run -it --mount type=bind, source="$(pwd)",target=/app 2852fc29ab02 sh