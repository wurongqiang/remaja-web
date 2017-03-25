class Meetings < ActiveRecord::Base
	has_many :sessions
end