class Bus < ActiveRecord::Base
  has_and_belongs_to_many :stations
end
