#!/bin/bash
docker stop universe 
docker rm universe 
rm -rf ${UNIVERSE_PATH}target
