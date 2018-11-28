class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.first_name.join("#{self.last_name}")
    # self.last_name
  end
end
