module CurrentUserConcern
	extend ActiveSupport::Concern

	#Override de la methode current_user
	#Super: méthode overrided => récupérer l'ancien fonctionnement
	def current_user
		super || guest_user
	end 

	def guest_user
		OpenStruct.new(name:"User", 
						first_name: "Guest", 
						email: "guest@example.com"
						)
	end
end