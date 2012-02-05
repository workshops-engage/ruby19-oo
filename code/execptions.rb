require 'open-uri'
retry_counter = 0
begin
  open('http://www.google.com')
rescue SocketError => e
  retry_counter += 1
  if retry_counter < 5
    sleep 5
    puts "Retry #{retry_counter}"
    retry
  end
end

class SomeError < StandardError; end
class Other < StandardError; end
begin
  bogus
rescue SomeError => e
rescue OtherError => e
ensure
  puts "Allways"
end
