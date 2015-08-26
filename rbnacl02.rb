require 'rbnacl/libsodium'
require "base64"
require "test/unit"
extend Test::Unit::Assertions

def concat_str(str1,str2)
  # convert strings to arrays
  arr1 = str1.unpack("C*")
  arr2 = str2.unpack("C*")
  # concat the arrays
  arr = arr1 + arr2
  # convert arrays back to string
  arr.pack("C*")
end

def rand_bytes(count)
  RbNaCl::Random.random_bytes(count)
end

def print_array(arr)
  arr.each do |x|
    print x
  end
puts
end

ok1 = rand_bytes(32)
ok2 = rand_bytes(32)
ok3 = concat_str(ok1,ok2)
puts ok1.class.name
puts ok2.class.name
puts ok3.class.name
puts ok1.length
puts ok2.length
puts ok3.length; puts

arr1 = ok1.unpack("C*")
arr2 = ok2.unpack("C*")
arr3 = ok3.unpack("C*")
print_array(arr1); puts
print_array(arr2); puts
print_array(arr3)
