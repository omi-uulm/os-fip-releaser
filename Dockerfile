FROM omi-registry.e-technik.uni-ulm.de/sv/openstack-client:wallaby

RUN apt update && apt install -y jq

ADD release /bin/release
ADD projectignore /etc/fip-release/projectignore
CMD [ "release" ]