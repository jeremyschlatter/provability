FROM debian:jessie

RUN apt-get update && apt-get install -y \
    python \
    haskell-platform \
    python-pip

RUN pip install Flask

ENTRYPOINT ["python", "/src/modal-combat/modalcombat.py"]

EXPOSE 8060

ADD . /src/modal-combat
