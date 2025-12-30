# syntax=docker/dockerfile:1

# Comments are provided throughout this file to help you get started.
# If you need more help, visit the Dockerfile reference guide at
# https://docs.docker.com/go/dockerfile-reference/

# Want to help us make this template better? Share your feedback here: https://forms.gle/ybq9Krt8jtBL3iCk7

################################################################################
# Pick a base image to serve as the foundation for the other build stages in
# this file.

FROM gcc:latest

# Create a non-privileged user that the app will run under.
# See https://docs.docker.com/go/dockerfile-user-best-practices/
#ARG UID=10001
#RUN adduser \
#    --disabled-password \
#    --gecos "" \
#    --home "/nonexistent" \
#    --shell "/sbin/nologin" \
#    --no-create-home \
#    --uid "${UID}" \
#    appuser
#USER appuser

# Copy the executable build files
COPY include/ /usr/include/
COPY src/ /usr/src
COPY runCode.sh /usr/runCode.sh
WORKDIR /usr
#RUN chmod +x /usr/runCode.sh

# What the container should run when it is started.
ENTRYPOINT [ "./runCode.sh" ]

# Example:
# FROM gcc:4.9
# COPY . /usr/src/myapp
# WORKDIR /usr/src/myapp
# RUN gcc -o myapp main.c
# CMD ["./myapp"]
