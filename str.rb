
def concat_str(str1,str2)
  # convert strings to arrays
  arr1 = str1.unpack("C*")
  arr2 = str2.unpack("C*")
  # concat the arrays
  arr = arr1 + arr2
  # convert arrays back to string
  arr.pack("C*")
end

str1 = 'a'
str2 = 'b'

str3 = concat_str(str1,str2)
puts str3
puts str3.length
