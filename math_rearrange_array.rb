def rearrange(a)
  n = a.size
  for i in (0...n)
    a[i] = a[i] + (a[a[i]] % n) * n
  end
  for i in (0...n)
    a[i] = a[i] / n
  end
end
a = [2,1,0]

rearrange(a)
puts a
