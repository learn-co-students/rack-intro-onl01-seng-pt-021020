require 'rack'

#Rack demands something that responds to call 

class MyServer
  def call(env)
    return [ 200, {'Content-Type' => 'text/html'}, pretty_response ]
  end
  
  def pretty_response
    (Time.now.to_i % 2).zero? ?  ["<em>Hello</em>"] : ["<strong>Hello</strong>"]
  end
end 

run MyServer.new 

#That's basically what web servers do all day long. Rails, Sinatra, any web programming framework is a way to organize the code that fills out that third Array element in our Rack responses.