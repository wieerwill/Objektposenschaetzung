ffmpeg -i frame%5d.png -vf palettegen palette.png
ffmpeg -v warning -framerate 25 -i frame000%2d.png -i palette.png -lavfi "paletteuse,setpts=6*PTS" -y sample.gif
