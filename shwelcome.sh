#!/usr/bin/env bash

# Get the working directory of this script.
SCRIPT_DIRECTORY="$( dirname $0 )"

# Includes file
. "${SCRIPT_DIRECTORY}/includes/includes.sh"

# Load modules with the load_module function.
# Modules are printed out in the order that they are loaded here.

load_module summary
load_module taskwarrior
load_module cowsayfortune
