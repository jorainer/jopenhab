FROM openhab/openhab:4.0.3

LABEL name="jorainer/jopenhab" \
      url="https://github.com/jorainer/jopenhab" \
      maintainer="johannes.rainer@gmail.com" \
      description="Small extension to the official openHAB docker." \
      license="Artistic-2.0"

# Set working directory and entrypoint
WORKDIR /openhab
COPY entrypoint /entrypoint
RUN chmod +x /entrypoint
ENTRYPOINT ["/entrypoint"]

# Execute command
CMD ["gosu", "openhab", "tini", "-s", "./start.sh"]
