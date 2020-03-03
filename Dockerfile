FROM jenkins/jenkins
USER root
WORKDIR /opt/
# enable aws cli commands
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \ 
	unzip awscliv2.zip && \
	./aws/install
# RUN useradd -ms /bin/bash toto_user
USER jenkins