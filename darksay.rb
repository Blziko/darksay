#!/usr/bin/env ruby

require 'fileutils'

quotes_path = File.join(__dir__, "collection", "quotes.txt")

unless File.exist?(quotes_path)
  puts "\033[1;31m[!] \033[0mError: \033[0;32mquotes.txt \033[0mnot found!"
  exit
end

quotes = File.readlines(quotes_path, chomp: true).reject(&:empty?)

if quotes.empty?
  puts "\033[1;31m[!] \033[0mQuotes not empty"
  exit
end

quote = quotes.sample

border = "-" * (quote.length + 4)

puts border
puts "| #{quote} |"
puts border