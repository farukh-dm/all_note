class User < ActiveRecord::Base
	
	# Associations
	has_many :notes, dependent: :destroy

	# Validations
	validates :name, :email, presence: true
	validates_with EmailValidator
	validates :email, uniqueness: true

end
