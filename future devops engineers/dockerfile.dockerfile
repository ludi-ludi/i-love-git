
FROM ubuntu:18.04
LABEL "Email"="ludivine91@yahoo.com"
LABEL "Phone Number"="000-222-1234"
LABEL "Instructions"="this image is own by LUDI MD"
RUN apt update -y && \
RUN apt install git && \
RUN apt install wget && \
RUN apt install ansible 
RUN mkdir /s4
WORKDIR /s4S
RUN mkdir /VOL
COPY ./ludivine .
ADD https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.5/src/apache-tomcat-10.1.5-src.tar.gz .
ENV "APP_NAME"="s4"
ENV "TEST_VAR"="canary"
ENV "TMP_DIR"="/tmp"
ENV "CI_JOB_STAGE"="development"
VOLUME /VOLS
EXPOSE 80 90 160 1100-1184 1185-1187 1188-1190
RUN useradd s4student-m -d /home/s4student -s /bin/bash
COPY ./user.sh user.sh
RUN chmod +x user.sh
RUN bash user.sh
CMD ["bash"]
