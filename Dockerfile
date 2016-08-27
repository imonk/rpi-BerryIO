FROM hypriot/rpi-gpio

MAINTAINER DIY NINJA <ninja@diyninja.io>

RUN apt-get update && apt-get install -y \
RUN wget -N https://raw.github.com/NeonHorizon/berryio/master/scripts/berryio_install.sh
ADD script.sh /app/

WORKDIR /app

RUN chmod +x script.sh
RUN ./script.sh


#RUN chmod +x berryio_install.sh

#RUN ["berryio_install.sh"]

EXPOSE 80

CMD ["apachectl", "start"]
