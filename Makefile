POSTPORT:=5000

all: install

# ~~~~~~~~ #
nfbroadcast:
	@echo ">>> Setting up Nextflow nfbroadcast..."
	git clone https://github.com/qbicsoftware/nextflow.git nfbroadcast && \
	cd nfbroadcast && \
	git checkout nfbroadcast && \
	make

nfbroadcast/main.nf: nfbroadcast
	@cd nfbroadcast && \
	ln -fs ../nf-script/main.nf

nfbroadcast/nextflow.config: nfbroadcast
	@cd nfbroadcast && \
	ln -fs ../nf-script/nextflow.config

install: nfbroadcast nfbroadcast/main.nf nfbroadcast/nextflow.config
	@echo ">>> Setting up Node.js libraries..."
	npm install

listen:
	@node listener.js "$(POSTPORT)" & \
	listener_pid="$$!" ; \
	echo ">>> Started listener with process id $${listener_pid}" ; \
	( cd nfbroadcast && \
	./launch.sh run main.nf -with-weblog http://localhost:$(POSTPORT) 2>&1 >/dev/null; ) ; \
	echo ">>> Killing listener process $${listener_pid}" ; \
	kill "$${listener_pid}"
