class Dish < ActiveRecord::Base
    belongs_to :restaurant
    has_many :joins
    has_many :tags, through: :joins
end