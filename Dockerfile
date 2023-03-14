FROM armswdev/arm-tools:bare-metal-compilers

RUN mkdir -p /src/workspace/

COPY . /src/workspace/
WORKDIR /src/workspace/

VOLUME /src/workspace/

RUN sudo rm /var/lib/apt/lists/lock && \
	sudo apt-get update -y && \
	sudo apt-get upgrade -y && \
	sudo apt-get -y --no-install-recommends install \
	zip \
	unzip \
	apt-transport-https \
	ca-certificates \
	xz-utils \
	curl
	

  # curl -L -O -J https://github.com/dirkarnez/rsta2-circle-prebuilt/releases/download/step45.1/circle-step45.1.zip && \
  # unzip circle-step45.1.zip -d "/circle-step45.1" && \
  
CMD cd /src/workspace && \
  ls && \
  make && \
  zip --symlinks -r medical-pi-v1.0.0.zip . && \
  exit

