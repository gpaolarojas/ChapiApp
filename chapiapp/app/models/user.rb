class User < ApplicationRecord
    has_and_blong_to_many :categories
end
