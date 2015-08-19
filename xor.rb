
def xor_str(str1,str2)
  str1.bytes.zip(str2.bytes).map { |a,b| a^b }.pack("C*")
end

str1 = 'abc'
str2 = 'def'

r1 = xor_str(str1,str2)
r2 = xor_str(r1,str2)
puts r2
