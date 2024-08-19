FROM varilink/tools/host-user
LABEL maintainer="david.williamson@varilink.co.uk"

RUN                                                                            \
  sudo apt-get update                                                       && \
  sudo apt-get --yes --no-install-recommends install                           \
    bacula-console

COPY private/bconsole.conf /etc/bacula/
COPY docker-entrypoint.sh /

ENTRYPOINT [ "sh", "/docker-entrypoint.sh" ]
