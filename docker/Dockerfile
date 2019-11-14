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
# RUN apt install make gcc g++ pkg-config -y
RUN npm install n -g && n 11
RUN npm install -g jshint
# RUN apt-get install libx11-dev libxkbfile-dev -y && apt-get install libsecret-1-dev -y
# RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
#     echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
# RUN apt-get update && apt-get install yarn -y
RUN apt-get update -y && apt-get upgrade -y
WORKDIR /opt/odoo/vscode
