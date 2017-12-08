class Post < ActiveRecord::Base
  belongs_to :member
  acts_as_commontable
end
