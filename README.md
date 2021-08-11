# Releaser

While IPv6 adoption is [slowly increasing](https://www.google.com/intl/en/ipv6/statistics.html), there is still a long way to go. Static IPv4 addresses are still useful and widely used, [even in OpenStack](https://docs.openstack.org/liberty/networking-guide/adv-config-ipv6.html). Until the mindset shifts to an IPv6 first perspective we have to deal with the limited availability of IPv4 addresses. Therefore, this tool tries to handle this sparse resource by implementing a simple cleanup task.

## About

Releases assigned floating ips in all projects. They are not released in the following cases:

* they are assigned to a project listed in the `projectignore` file
* they have a description set

## Config

The following environment variables are expected to be set:

* `OS_AUTH_URL`
* `OS_PROJECT_ID`
* `OS_PROJECT_NAME`
* `OS_USER_DOMAIN_NAME`
* `OS_PROJECT_DOMAIN_ID`
* `OS_USERNAME`
* `OS_REGION_NAME`
* `OS_INTERFACE`
* `OS_IDENTITY_API_VERSION`

The `projectignore` config file is a simple list with line separated project names

## Run

This script can be run locally if `python-openstack` and `jq` (version 1.6) is installed. Alternatively use the provided Dockerfile. However, it is advised to run this script within a CI/CD pipeline on a schedule.
