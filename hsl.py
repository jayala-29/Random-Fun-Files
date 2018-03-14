def hsl(r, g, b):
  mx = max(r, g, b)
  mn = min(r, g, b)
  delta = mx - mn
  L = (mn+mx)/2
  if (mx == mn):
    S = 0
    H = 0
  else:
    if (L < 0.5):
      S = delta/(mx+mn)
    else: 
      S = delta/(2 - (mx+mn))
    if (r == mx):
      H = 60 * (g - b) / delta
      if (H < 0):
        H += 360
    elif(g == mx):
      H = 120 + 60 * (b - r) / delta
    else:
      H = 240 + 60 * (r - g) / delta
  return [H, S, L]
