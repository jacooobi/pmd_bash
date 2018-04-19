BEGIN { id = 0 }

{
  if (!seen[$3]++) {
    id = id + 1;
    print id "," $3
  }
}
