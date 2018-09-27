# Dev: Arthur // kp0six
# CÓPIA NÃO COMÉDIA

require 'net/http' # importa o módulo

system "clear" # limpa a tela

print "Site: "
ws = gets.chomp # get site

paths = ["/admin","/painel","/panel","/adm"] # paths

for path in paths # cria o loop
	http = Net::HTTP.new(ws) # cria a conexão
	start = http.get(path) # envia a solicitação
	puts "#{path} [#{start.code} #{start.message}]" # output da solicitação
end
