=begin
Create a Dog class and define class method which will return the total number of dog object created.
  Sample output:
    Dog.total_number => 0
    Dog.new
    Dog.new
    Dog.total_number => 2
=end

class Dog
@@count = 0
    def initialize
        @@count += 1
    end

    def self.total_number
        @@count
    end
end

puts Dog.total_number
Dog.new
Dog.new
puts Dog.total_number 
Dog.new
Dog.new
puts Dog.total_number 