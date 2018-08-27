#!/bin/bash

# Fast fail the script on failures.
set -e

# Normalize Branch variable
export BRANCH=$(if [ "$TRAVIS_PULL_REQUEST" == "false" ]; then echo $TRAVIS_BRANCH; else echo $TRAVIS_PULL_REQUEST_BRANCH; fi)

# Analyze cookbook samples

for D in cookbook/*; do
  if [ -d "${D}" ]; then
		echo "${D}"
    echo "Run flutter packages get on ${D}"
    # ../flutter/bin/flutter packages get ${D}
		
		echo "Run flutter analyze on ${D}"
		# ../flutter/bin/flutter analyze ${D}

  fi
done

# Analyze other samples

for D in *; do

  if [ "$D" == "cookbook" || "$D" == "flutter"  ] ; then
              continue;
  fi
  if [ -d "${D}" ]; then
		echo "${D}"
    echo "Run flutter packages get on ${D}"
    ../flutter/bin/flutter packages get ${D}
		
		echo "Run flutter analyze on ${D}"
		../flutter/bin/flutter analyze ${D}

  fi
done


# pass test
# declare -a  PROJECT_NAMES=(
# 	# "jsonexample" \
# 	# "shrine" \
# )

# for PROJECT_NAME in "${PROJECT_NAMES[@]}"
# do
# 	echo "== Testing '${PROJECT_NAME}' on Flutter's $FLUTTER_VERSION channel =="
# 	pushd "${PROJECT_NAME}"
# 	../flutter/bin/flutter test
# 	popd
# done

# echo "-- Success --"
