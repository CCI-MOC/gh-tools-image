FROM fedora:34

ARG GITHUB_LABEL_SYNC_VERSION=2.0.1
ARG YQ_VERSION=2.12.2

RUN yum -y upgrade && \
	yum -y install \
		findutils \
		git \
		jq \
		make \
		nodejs \
		python3 \
		python3-pip \
		; \
	yum -y clean all

RUN pip install yq==${YQ_VERSION}

RUN npm install -g github-label-sync@${GITHUB_LABEL_SYNC_VERSION}
