class User < ApplicationRecord
  has_many :idols
    validates :name, presence: true
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
