# config.ru
$: << File.expand_path(File.dirname(__FILE__))

require 'hello.rb'
run Sinatra::Application