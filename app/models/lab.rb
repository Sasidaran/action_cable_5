class Lab < ApplicationRecord
	has_many :snippets
  has_many :users, through: :snippets

  validates_presence_of :name
end
