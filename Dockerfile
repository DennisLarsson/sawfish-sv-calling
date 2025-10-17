FROM ubuntu:24.04 AS sawfish
RUN apt-get update && apt-get install -y wget \
&& rm -rf /var/lib/apt/lists/*

RUN wget https://github.com/PacificBiosciences/sawfish/releases/download/v2.1.1/sawfish-v2.1.1-x86_64-unknown-linux-gnu.tar.gz && \
 tar -xzf sawfish-v2.1.1-x86_64-unknown-linux-gnu.tar.gz && \
 rm sawfish-v2.1.1-x86_64-unknown-linux-gnu.tar.gz
RUN ln -s /sawfish-v2.1.1-x86_64-unknown-linux-gnu/bin/sawfish /bin/sawfish
