# Nextflow Listener

A simple web server app to listen for HTTP POST messages output by Nextflow ([qbicsoftware](https://github.com/qbicsoftware/nextflow.git) `nfbroadcast` branch)

# Install

Clone this repo and set up Nextflow

```
git clone https://github.com/stevekm/nf-listener.git
cd nf-listener
make install
```

# Run

Run the listener with:

```
make listen
```

# Software

- [Java 8](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html) and macOS/Linux with `bash` required for Nextflow

- Node.js and npm (`brew install node`)

Tested on macOS 10.10 - 10.12
