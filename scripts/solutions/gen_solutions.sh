#!/bin/bash

set -o nounset
set -o errexit
shopt -s nullglob

ROOT_DIR=$(pwd)
CMD_FILE="${ROOT_DIR}/scripts/solutions/conjure_commands.txt"

nb_commands=$(cat ${CMD_FILE} | wc -l)
nb_cores=$1

if (( ${nb_commands} > 0 )) ; then
    echo "Number of commands to run: ${nb_commands}"
    echo "Number of cores to use   : ${nb_cores}"
    echo "Time limit in seconds    : ${LIMIT_TIME}"
    mkdir -p logs/versions logs/gnuparallel
    conjure --version               | tee logs/versions/conjure_version.txt
    savilerow | head -n2 | tail -n1 | tee logs/versions/savilerow_version.txt
    minion | head -n2               | tee logs/versions/minion_version.txt
    parallel                                                \
        -j"${nb_cores}"                                     \
        --eta                                               \
        --results logs/gnuparallel/solutions-results        \
        --joblog  logs/gnuparallel/solutions-joblog         \
        :::: ${CMD_FILE}
    LC_ALL=C sort -n logs/gnuparallel/solutions-joblog -o logs/gnuparallel/solutions-joblog
else
    echo "No commands found in \"${CMD_FILE}\""
    echo "You may want to run \"scripts/solutions/gen_conjure_commands.sh\" first."
fi

