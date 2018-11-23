#!/usr/bin/env bash



rowboat_test() {    mkdir -p ~/rowboatexecutions/
                    cd ~/rowboatexecutions/
                    ls -d -1 ~/rowboatexecutions/** | tail -n +6 | xargs rm -rf --
                    export ROBOT_TMUXP_ARGS=$@
                    export ROWBOAT_EXEC_DIR=~/rowboatexecutions/$(date +"%Y-%m-%d-%H%M%S")
                mkdir -p ${ROWBOAT_EXEC_DIR}
                 tmuxp load rowboat
		  cat /${ROWBOAT_EXEC_DIR}/robotstdout.log | awk '
      /PASS/ {print "\033[32m" $0 "\033[39m"; next }1 {print}
      /FAIL/ {print "\033[31m" $0 "\033[39m"; next }
      '
                  read -t 10 -p "Open logfile in browser? (y/n)" -n 1 -r
                    echo    # (optional) move to a new line
		    if [[ $REPLY =~ ^[Yy]$ ]]
                    then
                        xdg-open file://${ROWBOAT_EXEC_DIR}/log.html;
                    fi
                  }