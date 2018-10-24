class Event < ApplicationRecord
    belongs_to :place
    has_and_belongs_to_many :categories 
end
