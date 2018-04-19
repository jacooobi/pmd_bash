BEGIN { id = 0 }

{
  if (!seen[$3]++) {
    print id++ "," $3
  }
}
