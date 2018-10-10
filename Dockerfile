FROM openshift/jenkins-slave-base-centos7

RUN yum install -y epel-release && \
    sed -i 's/^enabled=1/enabled=0/g' /etc/yum.repos.d/epel.repo && \
    yum install -y git ansible postgresql && \
    yum install --enablerepo=epel -y jq \
    yum clean all
