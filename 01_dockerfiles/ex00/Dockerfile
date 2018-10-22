FROM alpine

# Let the container know that there is no tty
ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm-256color

RUN apk update && apk add vim git zsh make
CMD ["/usr/bin/vim"]
