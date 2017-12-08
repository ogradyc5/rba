class Location < ActiveRecord::Base
    validates_presence_of :name
    validates_presence_of :member_id
    belongs_to :member
end
