class Vehicle < ApplicationRecord
    belongs_to :user
    belongs_to :fuel
    belongs_to :vehicle_class
end