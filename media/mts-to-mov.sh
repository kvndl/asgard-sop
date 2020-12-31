#!/bin/bash
while read mts; do
  mov=$(echo "$mts"|sed -e 's|\.mts$|.mov|i')
  if [ "$mts" == "$mov" ]; then
    echo "Failed to generate unique mov filename for file $mts"
    exit 1
  fi
  ffmpeg -i "$mts" -c:v libx264 -f mov "$mov"
done < <(find . -type f -iname '*.mts')
