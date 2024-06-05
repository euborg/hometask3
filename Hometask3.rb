
require 'digest'

puts "Введите слово или фразу для шифрования:"
string = STDIN.gets.chomp

puts "Каким способом зашифровать:"
puts '1. MD5'
puts '2. SHA1'

crypt_method = STDIN.gets.to_s

puts "Вот что получилось: "

case crypt_method
when 1
  puts Digest::MD5.hexdigest(string)
when 2
  puts Digest::SHA1.hexdigest(string)
end

