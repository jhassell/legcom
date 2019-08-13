class Assignment < ApplicationRecord

  belongs_to :committee
  belongs_to :member

  belongs_to :user
end
