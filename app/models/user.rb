class User < ApplicationRecord
    has_secure_password
    validates :first_name, :last_name, :email, :phone_number, :password_digest, :password_confirmation, presence: true
    validates :email, uniqueness: true
end
