FROM node:20

LABEL version="1.0.4"
LABEL repository="https://github.com/axgn/hexo-action"
LABEL homepage="https://axgn.github.io"
LABEL maintainer="axgn <3451962304@qq.com>"

COPY entrypoint.sh /entrypoint.sh
COPY sync_deploy_history.js /sync_deploy_history.js

RUN apt-get update > /dev/null && \
    apt-get install -y git openssh-client > /dev/null ; \
    chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
