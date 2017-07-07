class User < ActiveRecord::Base
  has_many :trees
  has_many :individuals
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :first_name, :last_name, :gender

  def full_name
    "#{first_name} #{last_name}"
  end
end
