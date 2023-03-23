FROM ubuntu:22.04

RUN apt-get update && apt-get install -y sudo psmisc colorized-logs &&\
    useradd -m -s /bin/bash -p "" ubuntu &&\
    echo "ubuntu ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers &&\
    echo "ansi2txt < /tmp/out" > /tmp/logterm && chmod +x /tmp/logterm

