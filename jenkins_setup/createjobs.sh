#!/bin/bash
jobconfigs_dir=/opt/jobconfigs

while true; do
  for file in $jobconfigs_dir/*.xml; do
    filename=$(basename ${file} .xml)
    filename="${filename%.*}"
    java -jar /opt/jenkins-cli.jar -s http://jenkins:8080 -auth ${JENKINS_ADMIN_ID}:${JENKINS_ADMIN_PASSWORD} create-job ${filename}< $jobconfigs_dir/${filename}.xml
  done
  RET=$?
  if [ ${RET} == 4 ] ; then
      break
  fi
done