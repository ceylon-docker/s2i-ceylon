
FROM @@FROM@@

# This image provides a Ceylon @@VERSION@@ environment you can use to run your Ceylon
# applications.

MAINTAINER Tako Schotanus <tako@ceylon-lang.org>

EXPOSE 8080

ENV CEYLON_VERSION @@VERSION@@

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

RUN chown -R 1001:0 /app && chmod -R ug+rwx /app

USER 1001

# Set the default CMD to print the usage of the language image
CMD $STI_SCRIPTS_PATH/usage

