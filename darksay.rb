#!/usr/bin/env ruby

require 'fileutils'

quotes_path = File.join(__dir__, "collection", "quotes.txt")

unless File.exist?(quotes_path)
  puts "quotes.txt not found"
  exit
end

quotes = File.readlines(quotes_path, chomp: true).reject(&:empty?)

if quotes.empty?
  puts "quotes not empty"
  exit
end

quote = quotes.sample

border = "-" * (quote.length + 4)

puts border
puts "| #{quote} |"
puts border