def say_hi_to(&block)
  puts "Say hi #{block.call}"
end

say_hi_to { "michael" }
