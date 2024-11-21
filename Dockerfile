FROM openhab/openhab:latest

LABEL name="jorainer/jopenhab" \
      url="https://github.com/jorainer/jopenhab" \
      maintainer="johannes.rainer@gmail.com" \
      description="Small extension to the official openHAB docker." \
      license="Artistic-2.0"

RUN if [ -f /dev/ttyACM0 ] ; then /bin/chmod o+rw /dev/ttyACM0 ; fi
