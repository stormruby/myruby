
def retry01(test1,test2)
  count = 0
  begin
    if count > test1
      puts 'returning bye bye...'
      return
    else
      print 'count is not ', test1; puts
      fail
    end
  rescue
    count += 1
    retry if count < test2
      puts 'things did not work send email'
  end
end

### return before sending email
retry01(3,6)
### email before returning as retry only happens 3 times
retry01(6,3)
