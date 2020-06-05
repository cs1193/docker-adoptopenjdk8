ARG base_image

FROM ${base_image}

RUN wget -qO - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | apt-key add -
RUN add-apt-repository -y https://adoptopenjdk.jfrog.io/adoptopenjdk/deb/
RUN apt-get install -qq -y adoptopenjdk-8-openj9

ENV JAVA_HOME /usr/lib/jvm/adoptopenjdk-8-openj9-amd64
ENV PATH ${PATH}:${JAVA_HOME}/bin
