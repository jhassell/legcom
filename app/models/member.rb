class Member < ApplicationRecord

  has_many :assignments
  has_many :committees, :through => :assignments

  belongs_to :user
  
end
