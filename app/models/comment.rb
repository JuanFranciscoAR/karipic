class Comment < ApplicationRecord

        belongs_to :user # un comentario pertenece a un solo usuario 
        has_many :images
       
          
        accepts_nested_attributes_for :images
      

end
