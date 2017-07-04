class Point < ApplicationRecord
  belongs_to :user, foreign_key: :user_id
  has_one :program, foreign_key: :program_id

  accepts_nested_attributes_for :program
end
