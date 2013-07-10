class Email < ActiveRecord::Base
  attr_accessible :message, :subject
  validates :subject, presence: true
  validates :message, presence: true

  def deliver
    User.all.each do |u|
      UserMailer.update(u, self).deliver
    end
  end
end
