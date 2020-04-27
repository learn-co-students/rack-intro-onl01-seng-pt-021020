require 'rack'

#Instances of Proc that automatically have a call method that runs the block that they're initialized with. 

my_server = Proc.new do 
  [200, {'Content-Type' => 'text/html'}, ['<em>Hello World!</em>']]
end 

run my_server 

#All this method needs to do is return an Array with three elements:

#1. An HTTP Status code where 200 is used for OK
#2. A Hash with a "Content-Type" key that returns the value (for HTML-based documents) of text/html
#3. Something that responds to each which contains the multiple lines of a document of the "Content-Type"'s type (here, Strings that look like HTML: "<p>Like this!</p>". The most common "each-able" thing is an Array

#Feel free to change first.ru to add changes to your web server. If you make changes to first.ru you'll have to shut down the server (Control-C) and re-start it to see the changes.