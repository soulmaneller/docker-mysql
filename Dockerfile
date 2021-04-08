FROM mysql:5.7

# Copy starting scripts file
COPY src/start.sh /root/start.sh
COPY src/my.cnf /root/config/my.cnf

RUN apt update && \
    apt install -y pv nano && \
    rm -rf /var/lib/apt/lists/*

# Run necessary services
CMD ["/bin/bash", "/root/start.sh"]
