class User < ApplicationRecord
    validates :name, presence: true
    validates :password_digest, presence: true
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
