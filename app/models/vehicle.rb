class Vehicle < ApplicationRecord
  has_many :fastag, dependent: :destroy
end
