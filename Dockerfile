FROM jenkins/jenkins:lts
USER root
RUN apt-get -y update \
&& apt-get -y upgrade \
&& apt-get install wget \
&& wget https://packages.microsoft.com/config/debian/11/packages-microsoft-prod.deb -O packages-microsoft-prod.deb \
&& dpkg -i packages-microsoft-prod.deb \
&& rm packages-microsoft-prod.deb \
&& apt-get update \
&& apt-get install -y dotnet-sdk-3.1

