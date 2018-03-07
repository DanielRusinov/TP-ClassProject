class Meth < ApplicationRecord
	validates :programs_id, uniqueness: true
	belongs_to :program
end
