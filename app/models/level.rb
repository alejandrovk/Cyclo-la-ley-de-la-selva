class Level < ActiveRecord::Base
	has_and_belongs_to_many :animals
	belongs_to :ecosystem
end
