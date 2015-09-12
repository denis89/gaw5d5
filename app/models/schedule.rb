class Schedule < ActiveRecord::Base
   belongs_to :hotel 
  belongs_to :guest
end
