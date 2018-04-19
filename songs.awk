BEGIN { id = 1 }

{
  if (FILENAME == "artists.txt") {
    split($0, art, ",", seps)
    artists[art[2]] = art[1]
  }

  if (FILENAME == "tracks.txt") {
    if (!seen[$2]++) {
      print id++ "," $4 "," $2 "," $1 "," artists[$3]
    }
  }
}
