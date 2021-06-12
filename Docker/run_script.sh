#!/bin/bash
if [ -z "$2" ]; then
	echo "Error! Please add filenames!"
  else
	xvfb-run julia --project=/dummyMindReader/ /dummyMindReader/src/runDummyMindReader.jl -f "/data/$1" -o "/data/$2"
fi
