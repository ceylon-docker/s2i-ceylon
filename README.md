This repository contains Ceylon S2I builder images to be used with [source-to-image builders](https://github.com/openshift/source-to-image) for [OpenShift](https://github.com/openshift/origin/).

The following images/tags are available:

 - `1.3.3-jre8`, `1.3.3`, `latest-jre8`, `latest` ([ceylon/Dockerfile](https://github.com/ceylon-docker/s2i-ceylon/blob/master/1.3.3/1.3.3-jre8/Dockerfile))
 - `1.3.2-jre8`, `1.3.2` ([ceylon/Dockerfile](https://github.com/ceylon-docker/s2i-ceylon/blob/master/1.3.2/1.3.2-jre8/Dockerfile))
 - `1.3.1-jre8`, `1.3.1` ([ceylon/Dockerfile](https://github.com/ceylon-docker/s2i-ceylon/blob/master/1.3.1/1.3.1-jre8/Dockerfile))
 - `1.3.0-jre8`, `1.3.0` ([ceylon/Dockerfile](https://github.com/ceylon-docker/s2i-ceylon/blob/master/1.3.0/1.3.0-jre8/Dockerfile))
 - `1.2.2-jre8`, `1.2.2` ([ceylon/Dockerfile](https://github.com/ceylon-docker/s2i-ceylon/blob/master/1.2.2/1.2.2-jre8/Dockerfile))
 - `1.2.1-jre8`, `1.2.1` ([ceylon/Dockerfile](https://github.com/ceylon-docker/s2i-ceylon/blob/master/1.2.1/1.2.1-jre8/Dockerfile))
 - `1.2.0-jre8`, `1.2.0` ([ceylon/Dockerfile](https://github.com/ceylon-docker/s2i-ceylon/blob/master/1.2.0/1.2.0-jre8/Dockerfile))
 - `1.1.0-jre8`, `1.1.0` ([ceylon/Dockerfile](https://github.com/ceylon-docker/s2i-ceylon/blob/master/1.1.0/1.1.0-jre8/Dockerfile))
 - `1.0.0-jre8`, `1.0.0` ([ceylon/Dockerfile](https://github.com/ceylon-docker/s2i-ceylon/blob/master/1.0.0/1.0.0-jre8/Dockerfile))

*For all these images there is also a `x.y.z-jre7` version available*

### OpenShift Manual Setup

If you want to manually add these Ceylon builder images to an OpenShift v3 setup then follow these steps in the web interface:

 - Log in to the OpenShift console
 - Select or create a project
 - Click the "Add to Project" button
 - Select the "Import YAML / JSON" tab
 - Copy & paste the contents of the [image-streams.json](https://github.com/ceylon-docker/s2i-ceylon/blob/master/image-stream.json) file into the text box
 - Click the "Create" button

Now whenever you go back to the "Add to Project" screen there should be entries for the Ceylon builders.
