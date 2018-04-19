{
  if (FILENAME == "artists.txt") {
    artists[$1] = $2
  }

  if (FILENAME == "songs.txt") {
    songs_artists[$1] = $5
  }

  if (FILENAME == "listenings.txt") {
    songs_counter[$2]++
  }
}

END {

  for (s in songs_counter) {
    artist = songs_artists[s]

    artists_total[artist] += songs_counter[s]
  }

  for (a in artists_total) {
    inverse_artist_counter[artists_total[a]] = a
  }

  n = asort(artists_total, sorted_artists)

  most_played_artist_count = sorted_artists[n]

  most_popular_artist = artists[inverse_artist_counter[most_played_artist_count]]

  print "Most popular artist " most_popular_artist " with " most_played_artist_count " songs played."
}
