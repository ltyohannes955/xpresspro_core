class User < ApplicationRecord
    validates :first_name, :last_name, :email, :phone_number, :password, presence: true
    validates :email, uniqueness: true
end
