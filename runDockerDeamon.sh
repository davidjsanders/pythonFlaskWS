#!/bin/bash
docker run -p 5000:5000 -P -d dsanders/phonews /bin/bash -c "/phonews/phoneWS.py"
