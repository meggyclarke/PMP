class Point < ApplicationRecord
  belongs_to :user, foreign_key: :user_id
  belongs_to :program, foreign_key: :program_id

  accepts_nested_attributes_for :program, :user
end
