FROM ubuntu:trusty

RUN apt-get update && \
    apt-get install -y samba supervisor && \
    groupadd smbusers

ADD start /start
ADD supervisor.conf /etc/supervisor/conf.d/supervisor.conf
ADD supervisor_smb.conf /etc/supervisor/conf.d/smb.conf
ADD shares.txt /shares.txt
ADD users.txt /users.txt

EXPOSE 445

ENTRYPOINT ["/start"]
