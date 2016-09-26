
FROM ceylon/ceylon:1.2.1-jre7-redhat

# This image provides a Ceylon 1.2.1 environment you can use to run your Ceylon
# applications.

MAINTAINER Tako Schotanus <tako@ceylon-lang.org>

EXPOSE 8080

ENV CEYLON_VERSION 1.2.1

LABEL summary="Platform for building and running Ceylon applications" \
	  io.k8s.description="Platform for building and running Ceylon applications" \
      io.k8s.display-name="Ceylon 1.2.2" \
      io.openshift.expose-services="8080:http" \
      io.openshift.tags="builder,ceylon,ceylon12020" \
      io.openshift.s2i.scripts-url=image:///usr/libexec/s2i

ENV STI_SCRIPTS_PATH=/usr/libexec/s2i \
    HOME=/app \
    LANG="en_US.UTF-8"

COPY .s2i/bin/ $STI_SCRIPTS_PATH

USER root

RUN useradd -u 1001 -r -g 0 -d ${HOME} -s /sbin/nologin -c "Default Application User" default && \
    mkdir -p ${HOME} && \
    chown -R 1001:0 ${HOME} && \
    chmod -R ug+rwx ${HOME}

USER 1001

# Set the default CMD to print the usage of the language image
CMD $STI_SCRIPTS_PATH/usage

