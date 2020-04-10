#!/bin/bash

docker run -it --rm -p 3000:3000 \
  -v /app/node_modules \
  -v $(pwd):/app \
  marcus/frontend