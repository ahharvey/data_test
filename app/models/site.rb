class Site < ActiveRecord::Base
  validates_presence_of :name, :country
  
  has_many :logs, :order => "date"
end
