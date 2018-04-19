BEGIN { id = 1 }

{
  if (!seen[$1]++) {
    print id++ "," $1
  }
}
