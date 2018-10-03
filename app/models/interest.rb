class Interest < ApplicationRecord
  has_many :user_interests
  has_many :users, through: :user_interests
  accepts_nested_attributes_for :users
  
end
