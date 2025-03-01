#!/bin/bash
docker run -it --rm -v $(pwd):/workspacegba gba-dev /usr/local/bin/copy_libs.sh
