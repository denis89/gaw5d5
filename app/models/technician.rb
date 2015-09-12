class Technician < ActiveRecord::Base
  has_one :schedule
  has_many :customer, through: :schedule
end
