class Recipient < ActiveRecord::Base
  belongs_to :user
  has_many :message_recipients

  validates :first_name, :last_name, :users, presence: true  

  validates :has_address?

  def has_address?
    if :email.blank? && :facebook_account.blank? & :twitter_account.blank?
     errors.add(:email, "Need at least one destination email/fb/twitter")
   end
 end
end
