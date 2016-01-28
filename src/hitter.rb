require 'net/http'
require 'cgi'

def http_get(domain,path,params)
  return Net::HTTP.get(domain, "#{path}?".concat(params.collect { |k,v| "#{k}=#{CGI::escape(v.to_s)}" }.join('&'))) if not params.nil?
  return Net::HTTP.get(domain, path)
end

def http_post(domainandpath,params)
  uri = URI(domainandpath)
  res = Net::HTTP.post_form(uri, params)
end

def is_i(s)
  !!(s =~ /\A[-+]?[0-9]+\z/)
end

puts 'GET or POST request (use uppercase)?'
func = gets.chomp
@hit = ''
@path = ''
if func == 'POST'
  puts 'What is the entire URL of the domain of the endpoint you want to hit (must include http(s)://)? Example: If your endpoint is http://www.google.com/apis/potato/say , write google.com/apis/potato/say'
  @hit = gets.chomp
elsif func == 'GET'
  puts 'What is the domain of the endpoint you want to hit (no http(s):// nor www.)? Example: If your endpoint is http://www.google.com/apis/potato/say , write google.com'
  @hit = gets.chomp
  puts 'What is the path of the endpoint you want to hit? Example: If your endpoint is http://www.google.com/apis/potato/say , write /apis/potato/say'
  @path = gets.chomp
else
  raise "Error: #{func} isn't either GET or REQUEST"
end

puts 'How many parameters do you want to give?'
num_of_params = gets.chomp
if is_i(num_of_params)
  params = {}
  for i in 1..num_of_params.to_i
    puts "Please enter parameter #{i}'s name"
    name = gets.chomp
    puts "Please enter parameter #{i}'s value"
    value = gets.chomp
    params.merge!(:"#{name}" => value)
  end

  puts 'Result:'
  if func == 'GET'
    print http_get(@hit, @path, params)
  elsif func == 'POST'
    print http_post("#{@hit}", params)
    puts 'Parameters posted. Errors may or may not have occurred externally.'
  else
    raise 'Only GET and POST requests are accepted.'
  end

else
  raise 'Error: number of parameters is not a correct number'
end  
