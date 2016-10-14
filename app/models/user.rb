class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :saved_locations
  belongs_to :user_type
  has_many :problems

  def admin?
    return user_type.id == 1
  end

end
