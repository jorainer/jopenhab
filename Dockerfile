FROM openhab/openhab:latest

LABEL name="jorainer/jopenhab" \
      url="https://github.com/jorainer/jopenhab" \
      maintainer="johannes.rainer@gmail.com" \
      description="Small extension to the official openHAB docker." \
      license="Artistic-2.0"

RUN /bin/chmod o+rw /dev/ttyACM0
