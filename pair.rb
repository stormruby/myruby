
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

for i in (1..100)
  print _get_random_pair; puts
end
