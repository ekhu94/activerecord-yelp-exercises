class Join < ActiveRecord::Base
    belongs_to :dish
    belongs_to :tag
end