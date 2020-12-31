#!/bin/bash
for i in *.mov;
  do name=`echo "$i" | cut -d'.' -f1`
  echo "$name"
  echo ffmpeg -i "$i" "${name}.mp4"
done
