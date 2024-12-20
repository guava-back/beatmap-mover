#!/bin/bash
target_dir=$1;
game_dir=$(<"$HOME/.local/share/osuconfig/osupath");

if [[ "${target_dir: -1}" != "/" ]]; then
	target_dir=$target_dir"/";
fi

if [[ "$target_dir" == "/" ]]; then
	target_dir="./";
fi

files=$target_dir"*.osz";
count=$(( 0 ));
for f in ${files}; do
	if [[ "$f" == "$files" ]]; then break; fi

	mv "$f" $game_dir"/Songs/";
	count=$(( $count + 1 ));	
done

echo $count files is moved;
