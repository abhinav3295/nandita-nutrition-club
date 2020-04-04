class Member < ApplicationRecord
  validates_presence_of :name, :mobile, :date_of_birth
  def age
    Date.today.year - date_of_birth.year if date_of_birth
  end
end
