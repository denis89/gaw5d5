class Customer < ActiveRecord::Base
has_many :schedule
has_many :technician, through: :schedule  
end
