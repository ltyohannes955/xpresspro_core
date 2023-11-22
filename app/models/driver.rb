class Driver < ApplicationRecord
    AVAILABLE = "Available".freeze 
    NOT_AVAILABLE = "Not_Available".freeze 
    STATUS = [AVAILABLE, NOT_AVAILABLE].freeze
    FRENCH = "French".freeze
    ENGLISH = "English".freeze
    LANGUAGE = [FRENCH, ENGLISH].freeze

    validates :driver_name, :phone_number, :email, :status, :language, presence: true
    validates :status, inclusion: {in: STATUS}
    validates :language, inclusion: {in: LANGUAGE}

end
