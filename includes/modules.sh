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
	else
		echo "Warning: Module not found in $module_file"
	fi

}

# Lists current modules then exit
function modules_list {
        echo "Default modules are:"
        printf -- '     %s\n' "${modules[@]}"

        exit 0
}

# Adds a module at the begin
function modules_shift() {
  modules=("$1" "${modules[@]}")
}

# Add a module at the end
function modules_push() {
  modules=("${modules[@]}" "$1")
}

