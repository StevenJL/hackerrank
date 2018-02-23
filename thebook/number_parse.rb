# Write a method that parses numbers from strings

# my_number_parse("40000") => 40000
# my_numer_parse("40.123") => 40.123


def my_number_parse(num_str)
  output = 0

  num_str.split("").reverse.each_with_index do |num, index|
    output = output + num.to_i * (10 ** index)
  end

  output
end

my_number_parse("540")



