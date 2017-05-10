#!/bin/bash
set -e

target=${1?"specify commit order number"}
ref=${2-HEAD}
initial=$(git rev-list --max-parents=0 $ref)

{
	git bisect start --no-checkout $ref $initial
	git bisect run sh -c "[ \$(git rev-list --count BISECT_HEAD) -lt $target ] && exit 0 || exit 1"
} 1>&2

result=$(git rev-parse bisect/bad)
n=$(git rev-list --count $result)

git bisect reset 1>&2

if [[ "$n" -eq "$target" ]]
then
	echo "$result"
	exit 0
else
	>&2 echo "Found $result which is ${n}th commit, doesn't match $target"
	exit 1
fi