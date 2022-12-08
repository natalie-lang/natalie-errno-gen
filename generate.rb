`errno -l`.each_line do |line|
  name, number, description = line.strip.split(/\s+/, 3)
  puts "      #{name}: [#{number}, #{description.inspect}],"
end
