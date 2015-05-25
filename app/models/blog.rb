class Blog < ActiveRecord::Base
  has_many :entries
  delegate :comments, to: :entries
end
