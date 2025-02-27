#!/bin/bash
docker run -it --rm -v $(pwd):/workspacegba gba-dev make
