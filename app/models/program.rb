class Program < ApplicationRecord
  has_many :points, through: :users
end
