#!/usr/bin/env bash

# Get the working directory of this script.
SCRIPT_DIRECTORY="$( dirname $0 )"

# Includes file
. "${SCRIPT_DIRECTORY}/includes/includes.sh"

# Default modules
modules=("summary" "taskwarrior" "cowsayfortune")

# Usage help
function usage {
        echo "$0 [options]"
        echo "    -h print this message"
        echo "    -e exclude modules [moda modb]"
        echo "    -i include modules [modc modd]"
        echo ""

        exit 1
}

include=0
exclude=0

while getopts :hei opt; do
        case $opt in
                h)      usage ;;
                e)      exclude=$OPTARG ;;
                i)      include=$OPTARG ;;
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
