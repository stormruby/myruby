require 'rbnacl/libsodium'

def rand_bytes(count)
  RbNaCl::Random.random_bytes(count)
end

ok = rand_bytes(32)
puts ok.class
puts ok.length
