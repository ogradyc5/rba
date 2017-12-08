class Bike < ActiveRecord::Base
    has_many :bikes, :through => :store_bikes
    has_many :store_bikes, :dependent => :destroy
    
    #validates :name, presence: true
    validates :description, inclusion: { in: ["A", "B", "C"],  message: 'has to be one of A, B, C' }

  def price
    case description
    when 'A'
      15.55
    when 'B'
      10.95
    when 'C'
      7.95
    end
  end

  def total_income
    total = 0
    store_bikes.each { |r| total += r.sum_price }
    total
  end
end
