FROM python:3.10

RUN apt-get -y update && \
    apt-get install -y --no-install-recommends git ffmpeg && \
    rm -rf /var/lib/apt/lists/*
    
RUN git clone https://github.com/kagut57/RENAME-BOT/ app

WORKDIR app

RUN pip install -r requirements.txt

CMD ["bash", "run.sh"]
