class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :counts
  has_many :checks

validates :password,
  format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i }
validates :name, presence: true,
              format: { with: /\A[ぁ-んァ-ンー-龥々ー]/ }
validates :position, presence: true, 
      inclusion: { in: ["count","check"] }
end
