class Fastag < ApplicationRecord
  belongs_to :vehicle
  has_many :transactions
end
