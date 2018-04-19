BEGIN {
  id = 0
}

{
  if (FILENAME == "users.txt") {
    split($0, user, ",", seps)
    users[user[2]] = user[1]
  }

  if (FILENAME == "dates.txt") {
    split($0, date, ",", seps)
    dates[date[6]] = date[1]
  }

  if (FILENAME == "songs.txt") {
    split($0, song, ",", seps)
    songs[song[3]] = song[1]
    songs_artists[song[3]] = song[5]
  }

  if (FILENAME == "triplets.txt") {
    year = strftime("%Y", $3);
    month = strftime("%m", $3);
    day = strftime("%d", $3);
    hour = strftime("%H", $3);

    time = year month day hour

    date_id = dates[time]
    user_id = users[$1]
    song_id = songs[$2]
    artist_id = songs_artists[$2]

    print id++ "," song_id "," artist_id "," user_id "," date_id
  }
}
