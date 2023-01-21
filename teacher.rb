require_relative('./person')

class Teacher < Person
  def initialize(age, specialization, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @specialization = specialization
    @name = name
  end

  def can_use_services?
    true
  end
end
