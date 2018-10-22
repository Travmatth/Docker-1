FROM ubuntu:16.04

RUN apt-get update && apt-get upgrade -y && apt-get install -y ca-certificates openssh-server wget postfix
RUN wget https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh && chmod 777 script.deb.sh && ./script.deb.sh && apt-get install -y gitlab-ce
RUN apt update && apt install -y tzdata && \
  apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 443 80 22

# docker build -t gitlab .
# docker run -it --rm -p 80:80 -p 22:22 -p 443:443 --privileged gitlab
ENTRYPOINT (/opt/gitlab/embedded/bin/runsvdir-start &) && gitlab-ctl reconfigure && tail -f /dev/null
