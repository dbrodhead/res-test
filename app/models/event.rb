class Event < ActiveRecord::Base
  attr_accessible :activity, :date, :instructor, :location, :period, :trade
  
  belongs_to :day
  belongs_to :trade
end
