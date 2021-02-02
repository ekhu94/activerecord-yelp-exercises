class Tag < ActiveRecord::Base
    has_many :joins
    has_many :dishes, through: :joins
end