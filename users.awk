BEGIN { id = 0 }

{
  if (!seen[$1]++) {
    id = id + 1;
    print id "," $1
  }
}
