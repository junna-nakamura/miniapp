class Wish < ApplicationRecord
  belongs_to :user
  belongs_to :check, optional: true
end
