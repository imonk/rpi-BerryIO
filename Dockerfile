FROM resin/rpi-raspbian:stretch

MAINTAINER daTörst <toerst@gmail.com>

RUN apt-get update && apt-get install -y apt-utils wget libapache2-mod-authnz-external
RUN wget https://raw.githubusercontent.com/imonk/berryio/master/scripts/berryio_install.sh; chmod +x berryio_install.sh
RUN /berryio_install.sh

EXPOSE 80

CMD ["service", "apache2", "start"]
