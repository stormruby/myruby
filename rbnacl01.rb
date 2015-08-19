require 'rbnacl/libsodium'
require "base64"
require "test/unit"
extend Test::Unit::Assertions

def xor_str(str1,str2)
  str1.bytes.zip(str2.bytes).map { |a,b| a^b }.pack("C*")
end

def b64enc(str)
  Base64.strict_encode64 str
end

def b64dec(str)
  Base64.strict_decode64 str
end

def rand_bytes(count)
  RbNaCl::Random.random_bytes(count)
end

ok1 = rand_bytes(32)
mask = rand_bytes(32)
puts b64enc(ok1)
result = xor_str(ok1,mask)
ok2 = xor_str(result,mask)
puts b64enc(ok2)
assert_equal(ok1,ok2)
assert_not_equal(ok1,'3')
