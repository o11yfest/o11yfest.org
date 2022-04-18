#!/bin/bash
set -e

function check_for_root() { if [ ! -f "$1/CNAME" ]; then return 1; else return 0; fi }
root_path=.
for ((i=1;i<=5;i++)); do root_path=$(cd "$root_path"; pwd); if check_for_root "$root_path"; then break; else root_path="$root_path/.."; fi; done
if ! check_for_root "$root_path"; then echo "Could not find a root path to the repo that contained a CNAME file." && exit 3; fi

YEAR=$1; reyear='^[0-9]+$'; if [ -z "$YEAR" ] || [[ ! $YEAR =~ $reyear ]]; then echo "You must provide a numeric year value as the parameter to this script" && exit -1; fi

manifest_path=$root_path/_data/${YEAR}-speakers.yaml

if [ ! -f "$manifest_path" ]; then echo "Speaker manifest '$manifest_path' does not exist!" && exit; fi

function trim() {
  local ret=`echo $1 | sed -e 's/^[[:space:]]*//'`
  echo "$ret"
}

mkdir -p $root_path/_pages/${YEAR}/preaction/

ids=$(yq eval -j '.items' $manifest_path | jq --raw-output '.[] | .id')
for id in $ids; do
  name=$(yq eval --unwrapScalar ".items | .[] | select(.id==\"$id\") | .name" $manifest_path)
  template="""---
layout: $YEAR-preaction
id: $id
title:  "$name"
permalink: /$YEAR/preaction/$id
---
"""

  echo "$id: $name"
  echo "$template" > $root_path/_pages/${YEAR}/preaction/$id.markdown
done
