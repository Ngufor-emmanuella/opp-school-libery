require_relative 'nameable'
require_relative './timer_decorator'
require './capitalised_decorator'

class Person < Nameable
  attr_accessor :name, :age, :id

  def initialize(age, id, name = 'Unknown', parent_permission: true)
    super
    @id = id
    @name = name
    @age = age
    @rental_data = []
    @parent_permission = parent_permission
  end

  def of_age?
    age >= 18
  end

  def can_use_services?
    true if of_age? || @parent_permission
  end

  def correct_name
    @name
  end

  def add_rental_data(date, book)
    Rental.new(date, self, book)
    rental_data.push(self)
  end
end
