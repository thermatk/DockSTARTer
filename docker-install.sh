#!/bin/bash

readonly SCRIPTPATH="$(cd -P "$(dirname "$SOURCE")" && pwd)"
source "${SCRIPTPATH}/scripts/common.sh"

run_script 'root_check';
run_script 'run_apt';
run_script 'install_yq';
run_script 'install_docker';
run_script 'install_machine_completion';
run_script 'install_compose';
run_script 'install_compose_completion';
run_script 'setup_docker_group';
run_script 'enable_docker_systemd';

echo "Please reboot your system."
