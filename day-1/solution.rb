
input_array = []
File.open('input.txt') do |f|
  f.each_line do |line|
    input_array << line.to_i
  end
end

three_value_sum_array = []
i = 0
input_array.each do |item|
  if (i + 2 <= input_array.length)
    new_item = item.to_i + input_array[i + 1].to_i + input_array[i + 2].to_i
    three_value_sum_array << new_item
  end
  i += 1
end


def check_if_value_increased(array)
  increased = 0
  array.each_with_index do |item, index| 
    if(index.to_i != 0 &&  item > array[index - 1].to_i)
      increased += 1
    end
  end
  increased
end

puts check_if_value_increased(input_array)
puts check_if_value_increased(three_value_sum_array)

