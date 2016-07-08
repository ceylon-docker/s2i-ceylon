
FROM ceylon/ceylon:1.2.2-jre8-redhat

# This image provides a Ceylon 1.2.2 environment you can use to run your Ceylon
# applications.

MAINTAINER Tako Schotanus <tako@ceylon-lang.org>

ENV CEYLON_VERSION 1.2.2

LABEL summary="Platform for building and running Ceylon applications" \
	  io.k8s.description="Platform for building and running Ceylon applications" \
      io.k8s.display-name="Ceylon 1.2.2" \
      io.openshift.tags="builder,ceylon,ceylon12020" \
      io.openshift.s2i.scripts-url=image:///usr/libexec/s2i

ENV STI_SCRIPTS_PATH=/usr/libexec/s2i \
    HOME=/app \
    LANG="en_US.UTF-8"

COPY .s2i/bin/ $STI_SCRIPTS_PATH

USER root

RUN chown -R 1001:0 /app && chmod -R ug+rwx /app

USER 1001

# Set the default CMD to print the usage of the language image
CMD $STI_SCRIPTS_PATH/usage

