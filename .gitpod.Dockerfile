FROM gitpod/workspace-full

USER gitpod

# RUN npm i -g vue-cli
RUN npm install -g @vue/cli && \
    npm install json-server -g
RUN cd hello-axios && npm install
    
    

# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
# RUN sudo apt-get -q update && \
#     sudo apt-get install -yq bastet && \
#     sudo rm -rf /var/lib/apt/lists/*
#
# More information: https://www.gitpod.io/docs/config-docker/
