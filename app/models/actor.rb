class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    # first_part_of_name = self.first_name
    self.pluck(:first_name, :last_name)
    # .join("#{self.first_name}")
    # self.last_name
  end
end
