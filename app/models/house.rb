class House < ApplicationRecord
	validates :address, :zipcode, presence: true
end
