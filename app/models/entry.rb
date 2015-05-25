class Entry < ActiveRecord::Base
  has_many :comments
  belongs_to :blog

  validates_presence_of :title, :body
end
