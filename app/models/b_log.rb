class BLog < ActiveRecord::Base
  has_many :comments

  validates_presence_of : name, ;content
  validates_uniqueness_of :name
  validates :blog_id, numericacity: { only_integer: true}
end
