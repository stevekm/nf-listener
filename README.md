# Nextflow Listener

A simple web server app to listen for HTTP POST messages output by Nextflow ([qbicsoftware](https://github.com/qbicsoftware/nextflow.git) `nfbroadcast` branch). This app will print POST JSON to the console. 

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

Output should look like this:

```
{
    "runName": "curious_cajal",
    "runId": "2dd32f00-af41-4c96-9f07-b233ddf1f5f6",
    "runStatus": "started",
    "utcTime": "2018-05-23T15:14:31Z"
}
{
    "runName": "curious_cajal",
    "runId": "2dd32f00-af41-4c96-9f07-b233ddf1f5f6",
    "runStatus": "process_submitted",
    "utcTime": "2018-05-23T15:14:32Z",
    "trace": {
        "task_id": 5,
        "status": "SUBMITTED",
        "hash": "9f/504f38",
        "name": "make_thing (Sample3)",
        "exit": 2147483647,
        "submit": 1527088472027,
        "start": 0,
        "process": "make_thing",
        "tag": "Sample3",
        "module": [],
        "container": null,
        "attempt": 1,
        "script": "\n    echo \"[make_thing] running Sample3...\"\n    sleep 3\n    ",
        "scratch": null,
        "workdir": "/Users/kellys04/projects/nf-listener/nfbroadcast/work/9f/504f384782d41f33be4980285c8fbf",
        "queue": null,
        "cpus": 1,
        "memory": null,
        "disk": null,
        "time": null,
        "env": null,
        "native_id": 18505
    }
}
...
...
...
{
    "runName": "curious_cajal",
    "runId": "2dd32f00-af41-4c96-9f07-b233ddf1f5f6",
    "runStatus": "completed",
    "utcTime": "2018-05-23T15:14:50Z"
}
```

# Software

- [Java 8](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html) and macOS/Linux with `bash` required for Nextflow

- Node.js and npm (`brew install node`)

Tested on macOS 10.10 - 10.12
