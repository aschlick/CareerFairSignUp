class Major < ActiveRecord::Base

  has_and_belongs_to_many :students

  def description
    "(#{abbreviation}) #{name}"
  end

end
