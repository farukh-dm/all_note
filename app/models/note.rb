class Note < ActiveRecord::Base

	# Associations
  belongs_to :user

  # Validations
	validates :title, :description, presence: true


end
