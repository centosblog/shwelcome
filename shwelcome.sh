#!/usr/bin/env bash

# Get the working directory of this script.
SCRIPT_DIRECTORY="$( dirname $0 )"

# Includes file
. "${SCRIPT_DIRECTORY}/includes/modules.sh"

# Default modules
modules=("summary" "taskwarrior" "cowsayfortune")

# Usage help
function usage {
        echo "$0 [options]"
        echo "    -h print this message"
        echo "    -p prepend modules [-p modc -p modd]"
        echo "    -a append modules [-a moda -a modb]"
        echo "    -l list default modules"
        echo ""

        exit 1
}

# Getting users options
while getopts hla:p: opt; do
        case $opt in
                h)      usage ;;
                a)      modules_push $OPTARG;;
                p)      modules_shift $OPTARG ;;
		l)	modules_list ;;
                :)      echo "$0: $OPTARG requires a value:"; usage ;;
                \?)     echo "$0: unknown option $OPTARG"; usage ;;
                *)      usage ;;
        esac
done

# Load modules with the load_module function.
# Modules are printed out in the order that they are loaded here.
for mod in "${modules[@]}"
do
	load_module $mod
done
