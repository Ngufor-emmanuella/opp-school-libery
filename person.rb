require_relative './nameable'
require_relative './timer_decorator'
require './capitalised_decorator'

class Person < Nameable
  attr_accessor :name, :rentals, :age
  attr_reader :id

  def initialize(age, id, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @rentals= []
    @parent_permission = parent_permission
  end

  private

  def of_age?
    age >= 18
  end

  public

  def can_use_services?
    of_age? || @parent_permission
  end

  def correct_name
    @name
  end

  def add_rental(rental)
    @rentals << rental
  end
end
