class Krindle < ActiveRecord::Base
	has_many :krindlers
	has_many :users, through: :krindlers
end
