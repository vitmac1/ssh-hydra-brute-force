FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

# Instala pacotes necessários
RUN apt-get update && \
    apt-get install -y openssh-server rsyslog sudo && \
    useradd -m -s /bin/bash teste && \
    echo 'teste:123456' | chpasswd && \
    mkdir /var/run/sshd && \
    echo 'PermitRootLogin no' >> /etc/ssh/sshd_config && \
    echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config && \
    echo 'AllowUsers teste' >> /etc/ssh/sshd_config

# Expõe a porta 22
EXPOSE 22

# Inicia o rsyslogd em segundo plano e o sshd em primeiro plano
CMD bash -c "rsyslogd && exec /usr/sbin/sshd -D"