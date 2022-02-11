class Count < ApplicationRecord
  belongs_to :user
  validates :date, :prepared_number, :handed_number, :unused, presence: true
end
