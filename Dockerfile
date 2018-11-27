FROM centos:latest
LABEL Author wangjin

ENV AMBARI_VERSION 2.7.1.0

RUN set -x \
    && yum install -y wget \
    && wget -P /etc/yum.repo.d http://public-repo-1.hortonworks.com/ambari/centos7/2.x/updates/${AMBARI_VERSION}/ambari.repo \
    && yum makecache fast \
    && yum install -y ambari-server 

CMD ["ambari-server","start"]