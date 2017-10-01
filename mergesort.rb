def mergesort(ary)
  if ary.length < 2
    return ary
  end
  sorted = []
  lhs = mergesort(ary[0..(ary.length)/2-1])
  rhs = mergesort(ary[(ary.length)/2..-1])
  while !lhs.empty? && !rhs.empty?
    order = lhs[0] <=> rhs[0]
    case order
    when -1, 0
      sorted << lhs.shift
    when 1
      sorted << rhs.shift
    end
  end
  if lhs.empty?
    sorted = sorted + rhs
  else
    sorted = sorted + lhs
  end
  return sorted
end

p mergesort([3,4,5,1,0,2])
p mergesort([0,0,0,0,0,10])
p mergesort([0,0,0,10,0,10])
p mergesort([10,9,8,7,6,5])
p mergesort([10,9,-8,-7,6,5])