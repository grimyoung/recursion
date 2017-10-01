
def fibs(n)
  f0 = 0
  f1 = 1
  n.times do 
    f0, f1 = f1, f0 + f1
  end
  return f1
end

def fibs_rec(n)
  if (0..1).include? n
    return n
  else
    return fibs_rec(n-1) + fibs_rec(n-2)
  end
end

puts fibs_rec(0)
puts fibs_rec(1)
puts fibs_rec(5)
puts fibs_rec(8)