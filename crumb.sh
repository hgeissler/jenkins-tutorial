#/bin/bash

# jenkins:1234 is user+pw which was created on Jenkins Web Gui
# gets the crumb token and saves it as a variable
crumb=$(curl -u "jenkins:1234" -s 'http://jenkins.local:8080/crumbIssuer/api/xml?xpath=concat(//crumbRequestField,":",//crumb)')

# uses the url from 'Build now' from web gui
# trigger the build now
curl -u "jenkins:1234" -H "$crumb" -X POST http://jenkins.local:8080/job/ENV/build?delay=0sec

# build with parameters
curl -u "jenkins:1234" -H "$crumb" -X POST http://jenkins.local:8080/job/ansible-users-db/buildWithParameters?AGE=24
