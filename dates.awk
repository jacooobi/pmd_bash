BEGIN { id = 0 }

{
  year = strftime("%Y", $3);
  month = strftime("%m", $3);
  day = strftime("%d", $3);
  hour = strftime("%H", $3);

  date = year "," month "," day "," hour
  formatted = year month day hour

  if (!seen[date]++) {
    id = id + 1;
    print id "," date "," formatted
  }
}
