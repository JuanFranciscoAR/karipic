class Comment < ApplicationRecord

        belongs_to :user # un comentario pertenece a un solo usuario 
        has_many :images, as: :imageable # un comentario puede tener muchos usuarios, llave polimorfica

end
