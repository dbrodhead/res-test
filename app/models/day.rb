class Day < ActiveRecord::Base
  attr_accessible :date, :details, :weekday
  
  has_many :events
end
