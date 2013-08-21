curl https://monitoring.api.rackspacecloud.com/pki/agent/linux.asc > /tmp/signing-key.asc

sudo rpm --import /tmp/signing-key.asc

nano /etc/yum.repos.d/rackspace-cloud-monitoring.repo
# >>
[rackspace]
name=Rackspace Monitoring
baseurl=http://stable.packages.cloudmonitoring.rackspace.com/centos-6-x86_64
enabled=1
# <<

sudo yum install rackspace-monitoring-agent

sudo rackspace-monitoring-agent --setup

# Select the "Create a New Token" token.

sudo service rackspace-monitoring-agent start