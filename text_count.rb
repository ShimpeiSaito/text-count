# frozen_string_literal: true

if ARGV.size != 1
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
  f_line = line.gsub(/\s/, '')
  sum += f_line.length
end

puts sum
