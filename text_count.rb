# frozen_string_literal: true

unless ARGV.size == 1
  puts 'Error... Please specify arguments.'
  exit
end

file = ARGV[0] # ファイル名を指定

unless File.exist?(file)
  puts 'Error... File not found.'
  exit
end

sum = 0
File.foreach(file) do |line|
  sum += line.gsub(/\s/, '').length
end

puts sum
