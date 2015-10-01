def say_hi_to(&block)
  puts "Say hi #{block.call}"
end

say_hi_to { "michael" }

#
# http://rubylearning.com/satishtalim/ruby_blocks.html
#

def call_block_a
  puts 'Start of method'
  # you can call the block using the yield keyword
  yield
  yield
  puts 'End of method'
end

# Code blocks may appear only in the source adjacent to a method call
call_block_a {puts 'In the block'}

def call_block_b
  yield('hello', 99)
end

call_block_b {|str, num| puts str + ' ' + num.to_s}

def try
  if block_given?
    yield
  else
    puts "no block"
  end
end

try # => "no block"
try { puts "hello" } # => "hello"
try do puts "hello" end # => "hello"
