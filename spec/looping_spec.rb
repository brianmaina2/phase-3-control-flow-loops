require_relative 'spec_helper'
require_relative '../looping'

def happy_new_year
  10.downto(1) do |i|
    puts i
  end
  puts "Happy New Year!"
end

describe '#happy_new_year' do
  it 'puts out a countdown from 10 to 1, followed by "Happy New Year!"' do
    hny_output = "10\n9\n8\n7\n6\n5\n4\n3\n2\n1\nHappy New Year!\n"
    expect { happy_new_year }.to output(hny_output).to_stdout
  end
end



describe '#happy_new_year' do
  it 'puts out a countdown from 10 to 1, followed by "Happy New Year!"' do
    hny_output = "10\n9\n8\n7\n6\n5\n4\n3\n2\n1\nHappy New Year!\n"
    expect { happy_new_year }.to output(hny_output).to_stdout
  end
end


def fizzbuzz_printer
  (1..100).each do |num|
    if num % 3 == 0 && num % 5 == 0
      puts "FizzBuzz"
    elsif num % 3 == 0
      puts "Fizz"
    elsif num % 5 == 0
      puts "Buzz"
    else
      puts num
    end
  end
end


def reverse_string(str)
  reversed = ""
  str.each_char do |char|
    reversed = char + reversed
  end
  reversed
end

describe '#reverse_string' do
  it 'reverses a string' do
    expect(reverse_string('hello')).to eq('olleh')
    expect(reverse_string('hi')).to eq('ih')
  end
  
  it 'does not use the built-in .reverse or .reverse! methods' do
    expect_any_instance_of(String).not_to receive(:reverse)
    expect_any_instance_of(String).not_to receive(:reverse!)
    reverse_string('hello')
  end
end

