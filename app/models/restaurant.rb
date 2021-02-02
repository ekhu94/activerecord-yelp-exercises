class Restaurant < ActiveRecord::Base
    has_many :dishes

    def self.mcdonalds
        self.find_by(name: 'McDonalds')
    end

    def self.tenth
        self.find(10)
    end

    # not working
    def self.with_long_names
        self.where('name.length > ?', 12)
    end

    def max_dishes
        self.order('dishes.length desc').limit(1)
    end

end