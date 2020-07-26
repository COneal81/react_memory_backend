class Category < ApplicationRecord
    has_many :memories, dependent: :destroy
end
