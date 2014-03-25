#!/usr/bin/env bash

# Output formatting options
bold=$( tput bold )
normal=$( tput sgr0 )
underline=$( tput smul )


# Loads a module from the modules directory.
function load_module () {

	local module_name="$1"

	module_file="${SCRIPT_DIRECTORY}/modules/${module_name}"
	
	if [ -f "${module_file}" ]; then

		. ${module_file}
	fi

}
