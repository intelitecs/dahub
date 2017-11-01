class Country < ApplicationRecord
  #has_many :cities
  validates_presence_of :code, :code2, :continent, :name, :lifeExpectancy, :indepYear, :pCapital, :eCapital, :governmentForm
end
