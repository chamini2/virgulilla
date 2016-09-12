function flac_to_mp3 -d "convert flac files to mp3 (320 kbps) files"
  for song in $argv
    if string match --quiet -r 'flac$' $song
      # if it's a flac file
      set MP3 (string replace flac mp3 $song)
      for tag in ARTIST TITLE ALBUM GENRE TRACKNUMBER DATE
        set $tag (metaflac $song --show-tag=$tag | string replace "$tag=" "")
      end

      # default values
      if not test $TRACKNUMBER
        set TRACKNUMBER 0
      end
      if not test $GENRE
        set GENRE 12
      end

      printf "$song "
      flac --totally-silent -c -d "$song" |\
        lame -h --quiet -b 320 --add-id3v2 --pad-id3v2 --ignore-tag-errors\
          --ta "$ARTIST" --tt "$TITLE" --tl "$ALBUM"  --tg "$GENRE" --tn "$TRACKNUMBER" --ty "$DATE" - "$MP3"
      echo "done"
    end
  end
end
