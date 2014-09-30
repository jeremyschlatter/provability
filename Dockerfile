FROM debian:jessie

RUN apt-get update
RUN apt-get install -y python haskell-platform
RUN apt-get install -y python-pip && \
    pip install Flask

ENTRYPOINT ["python", "/src/modal-combat/modalcombat.py"]

EXPOSE 8060

ADD . /src/modal-combat
