FROM ubuntu:18.04
RUN apt-get update
RUN apt-get -qy install wget
RUN wget "https://apt.puppet.com/puppet-release-bionic.deb" -P /tmp
RUN dpkg -i "/tmp/puppet-release-bionic.deb"
RUN apt-get update
RUN apt-get install puppet-agent
RUN /opt/puppetlabs/bin/puppet agent --no-daemonize --certname puppet.agent.7 -t
# COPY /var/lib/puppet/ssl/ca/ca_crt.pem /var/lib/puppet/ssl/certs/ca.pem
# CMD ["/opt/puppetlabs/bin/puppet", "agent", "--no-daemonize", "--debug", "--waitforcert", "60", "--certname", "puppet.agent"]
# CMD ["/opt/puppetlabs/bin/puppet", "agent", "--no-daemonize", "--debug", "--certname", "puppet.agent", "--waitforcert", "60"]
CMD ["/opt/puppetlabs/bin/puppet", "agent", "--no-daemonize", "--debug", "--certname", "puppet.agent.7"]
