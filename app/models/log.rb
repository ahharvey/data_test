class Log < ActiveRecord::Base
  validates_presence_of :taxa_id, :weight, :length, :site_id, :date
  validates_numericality_of :weight, :length
  
  belongs_to :user
  belongs_to :taxa
  belongs_to :site
end
