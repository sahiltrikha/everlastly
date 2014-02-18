class Message < ActiveRecord::Base
  belongs_to :user
  has_many :message_recipients

  # validates :send_date, :user_id presence: true
   validate :has_message?

  def has_message?
    if :text_message.blank? && :video_link.blank? & :photo_link.blank?
     errors.add(:text_message, "Entire message can't be blank")
    end
  end
end
