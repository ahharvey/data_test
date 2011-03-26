class Taxa < ActiveRecord::Base
  validates_presence_of :latin, :common
  
  has_many :logs, :order => "date"
end
