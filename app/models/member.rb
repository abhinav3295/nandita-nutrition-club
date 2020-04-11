class Member < ApplicationRecord
  validates_presence_of :name, :mobile, :date_of_birth
  validates :name, length: { minimum: 5, maximum: 50 }
  validates :mobile, length: { minimum: 10, maximum: 13 }

  has_many :downlines, class_name: "Member", foreign_key: "coach_id"
  belongs_to :coach, class_name: "Member", optional: true

  def age
    Date.today.year - date_of_birth.year if date_of_birth
  end
end
