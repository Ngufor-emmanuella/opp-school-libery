require_relative 'base-decorator'

class TrimmerDecorator < BaseDecorator
  def correct_name
    @name_able.correct_name[0...10]
  end
end
