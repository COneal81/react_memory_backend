class User < ApplicationRecord
    has_many :memories
    has_many :visits
    has_many :caregivers, through: :visits


    has_secure_password
    validates :name, length: { minimum: 2 }
    validates :user_email, :family_member_email, presence: true
    validates :user_email, uniqueness: true
    validates :password, length: { in: 4..64 }

end
