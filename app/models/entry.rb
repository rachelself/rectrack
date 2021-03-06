class Entry < ActiveRecord::Base
  belongs_to :category
  belongs_to :friend

  validates_length_of :name, maximum: 30, message: "must be less than 30 characters"
  validates_presence_of :name, :category, :note, :friend
  validates_uniqueness_of :name, message: "already exists"
end
