class Check < ApplicationRecord
  belongs_to :user  
  validates :arrival, presence: true
end
