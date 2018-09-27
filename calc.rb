# Dev: Arthur // k00su

require 'net/http'

system "clear && cls"

print "Site: "
ws = gets.chomp

paths = ["/admin","/painel","/panel","/adm"]

for path in paths
	http = Net::HTTP.new(ws)
	start = http.get(path)
	puts "#{path} [#{start.code} #{start.message}]"
end