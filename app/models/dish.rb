class Dish < ActiveRecord::Base
    belongs_to :restaurant
    has_many :joins
    has_many :tags, through: :joins

    def self.names
        self.all.map { |d| d.name }
    end

    def self.max_tags
        
    end

    def self.untagged
        self.where('tags.length = ?', 0)
    end

end