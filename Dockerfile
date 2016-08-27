FROM hypriot/rpi-gpio

MAINTAINER DIY NINJA <ninja@diyninja.io>

RUN apt-get update && apt-get install -y \
    wget -N https://raw.github.com/NeonHorizon/berryio/master/scripts/berryio_install.sh

#RUN chmod +x berryio_install.sh
RUN apt-get install bash
RUN ["berryio_install.sh"]

EXPOSE 80

CMD ["apachectl", "start"]
