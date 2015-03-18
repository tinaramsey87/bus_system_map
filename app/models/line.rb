class Line < ActiveRecord::Base
  has_many :stations

  validates :name, :presence => true
  validates :number, :presence => true
end
