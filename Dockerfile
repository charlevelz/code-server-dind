FROM codercom/code-server:4.4.0

USER root

# COPY ./wrapper.sh /usr/local/bin/wrapper

RUN apt-get update && \
    apt-get install -y docker.io docker-compose bash curl openssh-server && \
    apt-get purge -y needrestart && \
    apt-get autoremove -y --purge && \
    mkdir -p /run/sshd && \
    rm -rf /var/lib/apt/lists/* && \
    curl -sSLo /usr/local/bin/dind https://raw.githubusercontent.com/jpetazzo/dind/master/wrapdocker && \
    chmod +x /usr/local/bin/*

# ENTRYPOINT ["/usr/local/bin/dind", "/usr/local/bin/wrapper"]
ENTRYPOINT ["/usr/bin/entrypoint.sh", "--bind-addr", "0.0.0.0:8080", "."]
