#!/usr/bin/env bash



rowboat_test() {      export ROBOT_TMUXP_ARGS=$@
                 tmuxp load /home/e603419/kodrepos/robotexecutor/robot.yaml
		  cat /tmp/outfile | awk '
      /PASS/ {print "\033[32m" $0 "\033[39m"; next }1 {print}
      /FAIL/ {print "\033[31m" $0 "\033[39m"; next }
      '
                  read -t 10 -p "Open logfile in browser? (y/n)" -n 1 -r
                    echo    # (optional) move to a new line
		    if [[ $REPLY =~ ^[Yy]$ ]]
                    then
                        xdg-open file:///home/${USER}/log.html;
                    fi
		    rm /tmp/outfile
                  }