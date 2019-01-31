#!/bin/bash
#
# Find superproject commit introducing given submodule's commit
#
# Usage: git submodule-introduced path/to/submodule <submodule-commit>
#
# Bisect is performed. On success found commit is displayed and written to the
# 'bisect/containing' ref
#
# Limitations:
# 1. Submodule must have monotonous history (all submodule updates are fast-forward)
# 2. Commit adding a submodule must have parents
set -e

export submodule=${1?specify submodule path}
export commit=${2?specify submodule commit}

from=$(git rev-list HEAD -- $submodule | tail -n 1)

git bisect start --no-checkout --term-bad=containing HEAD $from~ -- $submodule

git bisect run sh -c '! git -C $submodule merge-base --is-ancestor $commit $(git rev-parse BISECT_HEAD:$submodule)'
