class Station < ActiveRecord::Base
  # has_and_belongs_to_many :lines
  has_many :stops
  has_many :lines, :through => :stops

  validates :name, :presence => true
end
