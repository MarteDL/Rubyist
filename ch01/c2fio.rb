puts "Reading Fahrenheit temperature value from data file..."
output = File.open("temp.out", "w")

File.foreach("temp.dat") {|line|
fahrenheit = line.to_i
celsius = (fahrenheit - 32) * 5 / 9
output.puts celsius 
}

output.close
puts "Saving result to output file 'temp.out'"
