class Email < ActiveRecord::Base
  attr_accessible :message, :subject
  validates :subject, presence: true
  validates :message, presence: true
end
