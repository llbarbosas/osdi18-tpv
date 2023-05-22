#!/bin/bash

source activate py2

conda install -y -c bokeh selenium
conda install -y -c conda-forge phantomjs

cd /confirm/dashboard

bokeh serve . --show --allow-websocket-origin=*
