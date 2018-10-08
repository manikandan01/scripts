#!/bin/bash


subject="Testing"
body="hi this is manikandan"
from="manikandan.b@bambeeq.com"
to="manikandan.b@bambeeq.com"
echo -e "subject:${intro}\n${body}" | sendmail -f "${from}" -t "${to}"
