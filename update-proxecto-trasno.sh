#!/bin/bash

. `dirname $0`/common.inc.sh

project_root="$data_root/proxecto_trasno"

wget --mirror --no-parent -q -P $project_root http://people.trasno.net/~common/memorias_tmx/

for archive in `find $project_root -name *.tar.gz`; do
	tar -xzf $archive -C $project_root
	rm $archive
done
