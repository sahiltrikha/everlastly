class User < ActiveRecord::Base
  has_many :messages
  has_many :recipients

  validates :email, presence: true, uniqueness: true
  validates :password, :password_confirmation, :first_name, :last_name, presence: true

end
