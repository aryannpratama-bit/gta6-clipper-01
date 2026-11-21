#!/bin/bash
# Render bounty vertical (1080x1920) from an approved horizontal 1920x1080 clip.
# Center crop + pitch overlay on last 10s. Usage: ./render-vertical.sh <input.mp4> <output.mp4>
set -e
IN="${1:?input mp4 required}"
OUT="${2:?output mp4 required}"
# Pitch text (keep short for mobile): two lines, bottom third, 20s-30s.
# Uses DejaVu Sans if present; falls back to default fontconfig.
ffmpeg -y -v error -i "$IN" -filter_complex \
"[0:v]crop=ih*9/16:ih:(iw-ih*9/16)/2:0,scale=1080:1920,drawbox=x=0:y=1500:w=1080:h=320:color=black@0.55:t=fill:enable='between(t,20,30)',drawtext=text='Made with AI for make.fun':fontcolor=white:fontsize=52:x=(w-text_w)/2:y=1560:enable='between(t,20,30)',drawtext=text='Earn money making clips with AI':fontcolor=white:fontsize=44:x=(w-text_w)/2:y=1640:enable='between(t,20,30)',drawtext=text='make.fun/bounty/gta6-clipper-01':fontcolor=yellow:fontsize=40:x=(w-text_w)/2:y=1720:enable='between(t,20,30)'[v]" \
-map "[v]" -map 0:a? -c:v libx264 -preset veryfast -crf 20 -pix_fmt yuv420p -c:a aac -movflags +faststart "$OUT"
echo "DONE $OUT"
ffprobe -v error -show_entries stream=width,height -show_entries format=duration,size -of default=noprint_wrappers=1 "$OUT"
