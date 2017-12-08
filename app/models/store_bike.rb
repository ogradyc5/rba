class StoreBike < ActiveRecord::Base
  validates_uniqueness_of :bike_id, :scope => [:store_id] 
  belongs_to :store, :foreign_key => 'store_id'
  belongs_to :bike, :foreign_key => 'bike_id'
  has_many :bookings

end
