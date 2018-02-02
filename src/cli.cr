require "./crouton"

pipe = Crouton.go do |pipe|
  sleep 1
  pipe << "hello from fork"
end

puts "first"
puts pipe.gets
puts "second"
