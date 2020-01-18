FROM  codercom/code-server:latest
LABEL author=jinmu333

USER root

RUN sed -i s/deb.debian.org/mirrors.aliyun.com/g /etc/apt/sources.list && \
    sed -i s/security.debian.org/mirrors.aliyun.com/g /etc/apt/sources.list
RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install sudo curl zsh wget nano psmisc -y
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install screenfetch git -y
RUN apt install python3-dev python3-pip -y
RUN apt install build-essential libxslt-dev libzip-dev libldap2-dev libsasl2-dev libssl-dev -y
RUN curl https://sail.dev/install.sh | bash && \
    sail install-for-chrome-ext
ENV SHELL=/bin/zsh
RUN git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh && \
    cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

RUN python3 -m pip install xlwt num2words -i https://pypi.tuna.tsinghua.edu.cn/simple
RUN python3 -m pip install autopep8 pylint -i https://pypi.tuna.tsinghua.edu.cn/simple
COPY ./requirements.txt /opt/install/
RUN python3 -m pip install -r /opt/install/requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install nodejs npm -y
RUN npm install n -g && n 11
RUN npm install -g jshint
RUN apt-get update -y && apt-get upgrade -y
RUN rm -rf /root/.cache/

WORKDIR /opt/odoo/
