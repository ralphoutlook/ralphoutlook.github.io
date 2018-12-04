#!/bin/bash
ip=$(ifconfig eth0 | grep inet | awk '{print $2}' | sed 's/addr://')
port=4444
work=/work/jekyll/kisaku1978.github.io
cd ${work}
bundle exec jekyll serve --host ${ip} --port ${port}
