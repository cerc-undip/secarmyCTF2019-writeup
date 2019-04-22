#!/bin/bash

curl -s https://sec-army.ml/invisible/ | grep secarmy | cut -d ":" -f 2 | cut -d "<" -f 1
