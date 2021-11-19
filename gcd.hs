--greatest common divider 2 numbers; divide larger by the smaller
gcdfunc a b
  | a == b  = a
  | a > b && b == 0  = a
  | b > a && a == 0  = b
  | a > b = (gcdfunc b (mod a b))
  | otherwise = (gcdfunc a (mod b a))



