FROM nexus.eoc.ch:5000/openjdk:11-jdk-stretch

ENV TZ=Europe/Zurich
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

WORKDIR /home/internal

# creating unprivileged user
RUN groupadd --gid 1000 internal \
    && useradd --uid 1000 --gid internal --shell /bin/bash --home-dir /home/internal internal \
    && chown internal:internal .

COPY --chown=internal:internal target/flowable*.jar ./app.jar
COPY --chown=internal:internal entrypoint.sh ./entrypoint.sh

USER internal
RUN chmod +x ./entrypoint.sh

ENTRYPOINT [ "./entrypoint.sh" ]
