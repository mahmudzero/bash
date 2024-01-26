#!/usr/bin/env bash

foo() {
	echo foo
	if [ "$1" = true ]; then # the `= true` is necessary, as if we just do `if [ "$1" ]; then...
	                         # then it'll always evaluate to true
		echo 1
		return 1
	fi

	echo 0
	return 0
}

echo "false"
foo false # output here is `echo 0`, we return 0
echo "false"

echo

echo "true"
foo true # output here is `echo 1`, we return 1
echo "true"
