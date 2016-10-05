#!/usr/bin/env bash

# Download silk if not here.
if [ ! -f ./silk ]; then
  wget https://github.com/matryer/silk/releases/download/0.5.1/silk-0.5.1-linux-amd64.zip
  unzip silk-0.5.1-linux-amd64.zip
  mv silk-0.5.1-linux-amd64/silk .
  rm -rf silk-0.5.1-linux-amd64.zip silk-0.5.1-linux-amd64
  chmod a+x silk
fi

# Run the tests.
./silk -silk.url="https://spp.dev.cruk.org" ./tests/*
