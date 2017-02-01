class Robot
  attr_accessor :name, :height

  def initialize(name, height = 10)
    @name = name
    @height = height
  end

  def say_hi
    'Hi!'
  end

  def say_name
    "My name is #{name}"
  end

  def method_missing(*_args)
    puts 'Does not compute'
  end
end

class BendingUnit < Robot
  def bend(objecttobend)
    puts "Bend #{objecttobend}"
  end
end

class ActorUnit < Robot
  def change_name(new_name)
    @name = new_name
  end
end

# phil = BendingUnit.new("Phil")
# joe = ActorUnit.new("Joe")
#
# phil.bend("hat")
# puts phil.say_name
#
# puts joe.say_name
# joe.change_name("Bill")
# puts joe.say_name

our_class = %w(Rob David Nancy Kalea Laura Dave Demetra Kendrick Phil Ben Michael Miguel)

roboray = [Robot, BendingUnit, ActorUnit]

our_class.map { |person| roboray.sample.new(person) }

# legendary - when error for wrong method then output "does not compute"
# man = Robot.new("charlie")
# man.boaugh
