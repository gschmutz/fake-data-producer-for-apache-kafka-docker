FROM python:3.10

WORKDIR /usr/src/app

COPY ./run.sh .
RUN apt-get update &&\
    apt-get install -y expect &&\
    apt-get install -y jq

COPY ./install_dependencies.sh .
RUN chmod +x ./install_dependencies.sh &&\
    sh install_dependencies.sh

CMD [ "bash", "./run.sh" ]
