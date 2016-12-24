Run AVConv / MKV tools from cli with Docker
================

### Purpose
Allows you to run various AV Tools using a volume share and let it transcode/strip channels, etc.

### Running
To run the container, fire up docker like so:

	$ docker run -i -t -v /path/to/files:/files -v /path/to/local/cache:/home/docker --rm=true -u="1000" <my image> avconv [options]
	or
	$ docker run -i -t -v /path/to/files:/files -v /path/to/local/cache:/home/docker --rm=true -u="1000" <my image> bash

It's designed to run batch or interactively.  The docker will remove it's active container once the running process has finished.
This runs as a unprivileged user (1000), which you can map to your local user id as needed.
Run as root (0) => -u="0" if so desired.

