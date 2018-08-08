#!/bin/bash

/opt/gitlab/embedded/bin/runsvdir-start&
initctl start gitlab-runsvdir
EXTERNAL_URL="localhost" && gitlab-ctl reconfigure
exit
