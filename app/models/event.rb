class Event < ActiveRecord::Base
  attr_accessible :activity, :date, :instructor, :location, :period, :trade
end
