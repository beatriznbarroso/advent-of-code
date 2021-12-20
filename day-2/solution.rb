
input_array = []
File.open('input.txt') do |f|
  f.each_line do |line|
    input_array << line.split()
  end
end

def calculate_position(array)
  depth = horizontal_position = 0
  array.each do |item| 
    if (item[0] == 'up' || item[0] == 'down')
      item[0] == 'up' ? depth -= item[1].to_i : depth += item[1].to_i
    else
      horizontal_position += item[1].to_i
    end
  end
  depth * horizontal_position
end

def calculate_position_w_aim(array)
  depth = horizontal_position = aim = 0
  array.each do |item| 
    if (item[0] == 'up' || item[0] == 'down')
      item[0] == 'up' ? aim -= item[1].to_i : aim += item[1].to_i
    else
      horizontal_position += item[1].to_i
      if(aim > 0) 
        depth += item[1].to_i * aim
      end
    end
  end
  depth * horizontal_position
end

p calculate_position_w_aim(input_array)
