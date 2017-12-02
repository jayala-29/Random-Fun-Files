import random

approx_e = []
total_e = 0

for k in range(0, 50):

  i = 0
  curr_sum = 0
  arr_sum = []
  total = 0

  while (True):
  
    curr_sum += random.uniform(0, 1)
  
    i += 1
  
    if (curr_sum > 1):
    
      arr_sum.append(i)
    
      curr_sum = 0
      i = 0
    
    if (len(arr_sum) == 100):
    
      for j in range(0,100):
      
        total += arr_sum[j]
      
      break
  
  approx_e.append(total / len(arr_sum))
  
for i in range(0,len(approx_e)):
  
  total_e += approx_e[i]

print (total_e/len(approx_e) )
