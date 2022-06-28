!/usr/bin/bash
find /tmp/tim/ -name "*[0-9][0-9]-[0-9][0-9]-[0-9][0-9]*" -mmin +17 -type f -exec rm -fv {} \;
