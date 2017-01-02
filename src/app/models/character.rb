class Character < ActiveRecord::Base

	ALIGNMENTS = ["Lawful good", "Neutral good", "Chaotic good", "Lawful neutral", "(True) neutral", "Chaotic neutral", "Lawful evil", "Neutral evil", "Chaotic evil"]

	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

end
