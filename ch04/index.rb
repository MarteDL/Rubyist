require_relative 'stack'
require_relative 'cargo_hold'
require_relative 'suitcase'
require_relative 'thermometer'

# exercise/example in 4.1.2
s = Stack.new
s.add_to_stack('item one')
s.add_to_stack('item two')
s.add_to_stack('item three')

puts 'Object currently in stack are: '
puts s.stack

taken = s.take_from_stack

puts "Removed '#{taken}' from stack so we now have: #{s.stack}."

# exercise/example in 4.1.3
ch = CargoHold.new
sc1 = Suitcase.new
sc2 = Suitcase.new
sc3 = Suitcase.new

ch.load_and_report(sc1)
ch.load_and_report(sc2)
ch.load_and_report(sc3)

first_unloaded = ch.unload

print 'The fist suitcase off the plane is... '
puts first_unloaded.object_id

# part 4.2.4: extend
puts Thermometer.c2f(100)
puts Thermometer.f2c(212)

puts Thermometer.ancestors
