class Station < ActiveRecord::Base
  has_and_belongs_to_many :buses
  belongs_to :line

  validates :name, :presence => true
end
