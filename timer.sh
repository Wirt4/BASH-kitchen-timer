#!/bin/bash
#currently, at rounds up to the whole minute, since it's a task scheduler
# can possibly add some mod logic and rewrite a whole time stamp to make it efficient for 1-2 minute spans alternatively, write a script in python, and set an alias for that
(
at -m now + $1 minutes << EOT
aplay ~/Sounds/alarm-clock-1.wav
EOT
) &>/dev/null
