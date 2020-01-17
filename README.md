# ftp-sftp-bridge
Allows you to mount an SFTP connection and share it via FTP.

## Installation
1. Run `docker plugin install vieux/sshfs DEBUG=1 sshkey.source=/home/ubuntu/ftp-sftp-bridge/.ssh/` (assuming this repo is located at /home/ubuntu/ftp-sftp-bridge)
2. Add your SSH keys for connecting to remote SFTP servers to the ".ssh" folder.
3. Copy the ".env.example" file to a file named ".env" and configure the "USERS" variable in it so it has your desired FTP users and passwords.
4. Configure the volume mappings in the "docker-compose.yml" file so that the sshfs plugin knows how to mount the remote SFTP connections as Docker volumes.

Note: FTP users are automatically created on startup and are mapped to their appropriate folder at "/ftp/<username>" inside of the container,
so you want to mount each sshfs SFTP volume to the appropriate folder.  

## How to run
Simply run `make up` to start the ftp-sftp-bridge service