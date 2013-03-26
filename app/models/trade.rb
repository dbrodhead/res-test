class Trade < ActiveRecord::Base
  attr_accessible :mosid, :trade
  
  has_many :events
end
