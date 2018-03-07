class Program < ApplicationRecord
	self.primary_key = "id"
	validates :id, uniqueness: true
	has_one :meth
end
