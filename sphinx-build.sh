#!/bin/bash
docker pull nickjer/docker-sphinx
docker run --rm -i -v "${PWD}:/doc" -u "$(id -u):$(id -g)" nickjer/docker-sphinx make html

SSH_HOST="sphinx101-priv.dsp-techops.broadinstitute.org"
SSH_USER=jenkins
SSHOPTS="-o UserKnownHostsFile=/dev/null -o CheckHostIP=no -o StrictHostKeyChecking=no"
SSHCMD="ssh $SSHOPTS"
SCPCMD="scp $SSHOPTS"
echo "${SCPCMD} -r build/html ${SSH_USER}@${SSH_HOST}:/app/"
${SCPCMD} -r build/html ${SSH_USER}@${SSH_HOST}:
${SSHCMD} ${SSH_USER}@${SSH_HOST} sudo cp -rfp /home/jenkins/html /app/
${SSHCMD} ${SSH_USER}@${SSH_HOST} sudo docker-compose -f /app/docker-compose.yml -p sphinx stop
sleep 5
${SSHCMD} ${SSH_USER}@${SSH_HOST} sudo docker-compose -f /app/docker-compose.yml -p sphinx up -d
#restart apache docker-compose