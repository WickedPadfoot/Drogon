class Player < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    #Toute la bouette pour permmettre de se logger avec le username et non le email :
    def login=(login)
         @login = login
    end

    def login
         @login || self.username
    end


    def self.find_for_database_authentication(warden_conditions)
         conditions = warden_conditions.dup
         if login = conditions.delete(:login)
           where(conditions.to_h).where(["lower(username) = :value", { :value => login.downcase }]).first
         else
           where(conditions.to_h).first
         end
     validates :username,
      :presence => true,
      :uniqueness => {
        :case_sensitive => false
      } # etc.
    end
end
