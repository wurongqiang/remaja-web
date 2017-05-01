class Session < ActiveRecord::Base
	belongs_to :meeting
	has_many :attendances
end