=begin
4. Create a class called MyCar. When you initialize a new instance or object of the class, allow the user to define some instance variables that tell us the year, color, and model of the car. Create an instance variable that is set to 0, during instantiation of the object to track the current speed of the car as well. Create instance methods that allow the car to speed up, brake, and shut the car off.
5. attr_accessor, attr_reader and attr_writter
6. Add an accessor method to your MyCar class to change and view the color of your car. Then add an accessor method that allows you to view, but not modify, the year of your car.
=end

class MyCar
    attr_writer :color
    attr_reader  :year
    @speed = 0

    def year
        puts @year
    end

    def initialize(year, color, model, current_speed)
        @year = year
        @color = color
        @model = model
        @speed = current_speed
    end

    def speed_up(increased_speed)
        @speed += increased_speed
    end

    def brake(reduced_speed)
        @speed -= reduced_speed
    end

    def shut_the_car_off
        @speed = 0
    end

    def color=(new_color)
        @color = color
    end

    def color
        @color
    end
    
end

car = MyCar.new(1996, "Red", "dezire",10)
puts car.speed_up(10)
puts car.brake(5)
puts car.shut_the_car_off
puts car.color=("blue")
puts car.color
puts car.year