class Matte < ActiveRecord::Base
  has_many :talents
  has_many :employments
  has_one  :education
end
