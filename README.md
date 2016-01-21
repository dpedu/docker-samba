docker-samba
============

Smbd (for file shares) in a docker container.

* Build: `docker build -t smbd .`
* Run: `docker run -v /host/users.txt:/users.txt -v /host/shares.txt:shares.txt -v /host/sharedir:/mnt/share -p 445 smbd`

Config
------

For users, users.txt should contain colon separated username:password pairs. This file must end with a newline!

For shares, shares.txt is appended to the end of smb.conf at runtime. Shares should be defined here.
