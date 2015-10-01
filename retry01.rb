
def retry01
  count = 0
  begin
    if count > 15
      exit
    else
      fail 'count is not 15'
    end
  rescue
    count += 1
    puts count
    retry if count < 15
  end
end

retry01
