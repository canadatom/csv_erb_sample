require 'csv2json'
require "erb"
require 'json'

json = StringIO.new()

File.open('input.csv', 'r') do |input|
	CSV2JSON.parse(input, json)
end

json.pos = 0
#puts json.read

id = 1
name = "Tom"
address = "blah"

erb = ERB.new(File.open("output.xml.erb").read, 0, '>')
puts erb.result binding