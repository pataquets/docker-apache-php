FROM pataquets/apache:2.2

RUN DEBIAN_FRONTEND=noninteractive \
	apt-get update && \
	apt-get -y upgrade && \
	apt-get -y install \
		libapache2-mod-php5 \
	&& \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/
