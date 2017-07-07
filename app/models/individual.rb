class Individual < ActiveRecord::Base
  enum gender: { male: 1, female: 2 }
  belongs_to :user
  has_many :relationships
  validates_presence_of :user_id, :first_name, :last_name, :gender
end
