class Event < ActiveRecord::Base
  attr_accessible :activity, :day_id, :instructor, :location, :period, :trade_id
  
  belongs_to :day
  belongs_to :trade
end
