#!/usr/bin/env ruby

def print_arr(array, first)
  counter = first
  array.each do |element|
    puts "#{yield counter, element}"
    counter = counter.next
  end
end

array = %w(C Python Haskel)
print_arr(array, 1){|counter, element| "#{counter}. #{element}"}
print_arr(array, 1){|counter, element| "<<#{counter}>> #{element}"}

