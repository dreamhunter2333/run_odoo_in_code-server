FROM odoo:13.0
LABEL author=jinmu333

USER root

RUN sed -i s/deb.debian.org/mirrors.aliyun.com/g /etc/apt/sources.list && \
    sed -i s/security.debian.org/mirrors.aliyun.com/g /etc/apt/sources.list
RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install sudo curl zsh wget nano psmisc -y
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install screenfetch git -y
RUN curl https://sail.dev/install.sh | bash && \
    sail install-for-chrome-ext
ENV SHELL=/bin/zsh
RUN git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh && \
    cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
RUN python3 -m pip install wheel && python3 -m pip install --upgrade setuptools
RUN python3 -m pip install autopep8 pylint -i https://pypi.tuna.tsinghua.edu.cn/simple
RUN apt-get update -y && apt-get upgrade -y
RUN npm install -g jshint

WORKDIR /opt/odoo