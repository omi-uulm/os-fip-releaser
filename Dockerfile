FROM omi-registry.e-technik.uni-ulm.de/sv/openstack-client:wallaby

ARG JQ_VERSION=1.6

RUN apt update && apt install -y wget
RUN wget https://github.com/stedolan/jq/releases/download/jq-${JQ_VERSION}/jq-linux64 -O /bin/jq && chmod +x /bin/jq

ADD release /bin/release
ADD projectignore /etc/fip-release/projectignore
CMD [ "release" ]