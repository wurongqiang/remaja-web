class Attendance < ActiveRecord::Base
	belongs_to :session
	belongs_to :saint
end