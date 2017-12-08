class Member < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
 # before_action :authenticate_member!
  validates_presence_of :name
  has_many :locations
  has_one :profile
  
  acts_as_commontator
end
