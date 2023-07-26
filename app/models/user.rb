class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise  :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable

  has_many :comments #un usuario va tener mucho comentarios
  has_many :images, as: :imageable # los usuario stendras muchas imagenes, llave polimorfica
        
end
