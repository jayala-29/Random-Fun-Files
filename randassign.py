import random as r

# randomly assign group "ls" into sizes of "k"
def listg(ls, k):
  n = len(ls)
  rls = []
  i = 0
  skip = 0
  m = 1
  assigned = 0
  while (i < n):
    if (assigned == 0 and len(rls) % k == 0 and i):
      print ("")
      assigned = 1
    else:
      assigned = 0
    if (i % k == 0 and skip == 0):
      print ("Group", m)
      m += 1
    rand = r.randint(0, n-1)
    if (rand in rls):
      skip = 1
      continue
    skip = 0
    rls.append(rand)
    print (ls[rand])
    i += 1
  return 

listg(["s1", "s2", "s3", "s4", "s5", "s6"], 2)
