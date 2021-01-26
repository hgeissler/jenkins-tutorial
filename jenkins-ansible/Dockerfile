FROM jenkins/jenkins

USER root 

RUN curl https://bootstrap.pypa.io/2.6/get-pip.py -o get-pip.py && \
    python get-pip.py && \
    python -m pip install ansible --upgrade

USER jenkins
