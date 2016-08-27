FROM resin/rpi-raspbian

MAINTAINER DIY NINJA <ninja@diyninja.io>

RUN apt-get update && apt-get install -y \
RUN wget https://raw.github.com/NeonHorizon/berryio/master/scripts/berryio_install.sh
RUN chmod +x berryio_install.sh
RUN ["berryio_install.sh"]

EXPOSE 80

CMD ["service", "apache2", "start"]
