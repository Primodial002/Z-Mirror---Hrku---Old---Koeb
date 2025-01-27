FROM dawn001/z_mirror:hk_main

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

RUN adduser  --uid 10014 choreo

USER 10014

COPY . .
ENTRYPOINT ["/usr/src/app"]

CMD ["bash", "start.sh"]
