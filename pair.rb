
def _test_random_pair
  hpk = Random.new.rand(0..3)
  hpkto = Random.new.rand(0..3)
  if hpk == hpkto
    return true, []
  else
    return false, [hpk,hpkto]
  end
end

def _get_random_pair
  values = []
  begin
    values = _test_random_pair
  end while values[0]
  values[1]
end

=begin
def _get_random_pair
  arr = [hpk,hpkto]
  print arr; puts
  while _test_random_pair
  if _test_random_pair(arr)
    puts 'got a good _test_random_pair'
    arr
  else
    puts 'got a nil _test_random_pair'
    nil
  end
end
=end
#values = _test_random_pair
#print values[0], values[1]; puts

#print _get_random_pair; puts

=begin
mypair = []
while (mypair = _get_random_pair == nil)
  print mypair; puts
end
print mypair; puts
=end

for i in (1..100)
  print _get_random_pair; puts
end
