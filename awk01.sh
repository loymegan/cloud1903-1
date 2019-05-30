#!/usr/bin/env bash
#


echo | awk -v variable=$1 '{ print variable }'
