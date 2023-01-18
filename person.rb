require_relative 'nameable'

class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id, :rentals

  def initialize(age, name = 'Unknown', parent_permission: true)
    super
    @id = Random.rand(1..100)
    @name = name
    @age = age
    @rentals = []
    @parent_permission = parent_permission
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  def correct_name
    @name
  end

  private

  def of_age?
    @age >= 18
  end

  def add_rental(rental)
    @rentals.push(rental)
    rental.person = self
  end
end
