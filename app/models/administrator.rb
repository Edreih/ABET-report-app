class Administrator < ApplicationRecord
  validates :email, presence: true, uniqueness: true
end
