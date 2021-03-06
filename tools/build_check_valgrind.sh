#!/bin/bash
pushd /tmp
R CMD build --no-build-vignettes ~/icd
# --use-valgrind needs a .valgrindrc somewhere for options
ICD_SLOW_TESTS=FALSE R CMD check --no-build-vignettes --use-valgrind "$(ls -t /tmp/icd*.tar.gz | head -1)"
popd
