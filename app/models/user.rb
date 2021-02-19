class User < ApplicationRecord
    has_secure_password #password validations included

    validates :username, presence: true
    validates :username, uniqueness: true
end
