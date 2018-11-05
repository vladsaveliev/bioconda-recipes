#!/bin/bash

perl Build.PL --extra_compiler_flags "-I$PREFIX/include" --htslib "$PREFIX/include/htslib"
perl ./Build
perl ./Build test
# Make sure this goes in site
perl ./Build install --installdirs site