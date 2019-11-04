class User < ApplicationRecord

	# Un utilsateur peut participer à plusieurs événements via les participations
	# Un utilisateur peut être administrateur ou participant
	has_many :attendancies, foreign_key: 'attendant_id', class_name: "Attendance"
  has_many :events, through: :attendancies, foreign_key: 'administrator_id', class_name: "Event"
  
  # has_many :attendancies
  # has_many :events, through: :attendancies
  
end
