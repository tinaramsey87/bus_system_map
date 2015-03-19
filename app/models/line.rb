class Line < ActiveRecord::Base
  # has_and_belongs_to_many :stations
  has_many :stops
  has_many :stations, :through => :stops

  validates :name, :presence => true
  validates :number, :presence => true
end
