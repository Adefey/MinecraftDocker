FROM adoptopenjdk:latest

ARG MIN_RAM
ARG MAX_RAM
ARG FLAGS

ENV min_ram=${MIN_RAM}
ENV max_ram=${MAX_RAM}
ENV flags=${FLAGS}

WORKDIR /server

CMD java -Xms${min_ram} -Xmx${max_ram} ${flags} -jar paper.jar nogui
