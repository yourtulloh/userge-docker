FROM python:3.9-slim-bullseye

WORKDIR /app/

RUN echo deb http://http.us.debian.org/debian/ testing non-free contrib main > /etc/apt/sources.list \
    && apt-get update \
    && apt-get clean

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    sudo \
    git \
    curl \
    build-essential \
    gnupg2 \
    ffmpeg \
    unzip \
    wget \
    jq

RUN mkdir -p /tmp/ \
    && cd /tmp/ \
    && wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb \
    && dpkg -i ./google-chrome-stable_current_amd64.deb; apt-get install -fy --no-install-recommends \
    && rm ./google-chrome-stable_current_amd64.deb

RUN mkdir -p /tmp/ \
    && cd /tmp/ \
    && wget -O /tmp/chromedriver.zip http://chromedriver.storage.googleapis.com/$(curl -sS chromedriver.storage.googleapis.com/LATEST_RELEASE)/chromedriver_linux64.zip \
    && unzip /tmp/chromedriver.zip chromedriver -d /usr/bin/ \
    && rm /tmp/chromedriver.zip

ENV GOOGLE_CHROME_DRIVER=/usr/bin/chromedriver
ENV GOOGLE_CHROME_BIN=/usr/bin/google-chrome-stable

RUN mkdir -p /tmp/ \
    && cd /tmp/ \
    && wget -O /tmp/rarlinux.tar.gz http://www.rarlab.com/rar/rarlinux-x64-6.0.0.tar.gz \
    && tar -xzvf rarlinux.tar.gz \
    && cd rar \
    && cp -v rar unrar /usr/bin/ \
    && rm -rf /tmp/rar*

ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

RUN git clone https://github.com/UsergeTeam/Userge .

RUN python3 -m pip install -U \
    pip \
    wheel

RUN pip3 install -Ur requirements.txt

CMD [ "bash", "./run" ]
