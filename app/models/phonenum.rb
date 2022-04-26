class Phonenum < ApplicationRecord
include Visible
   
    has_many :infos , dependent: :destroy

    validates :name,   presence: true
    validates :number, presence: true , length: {minimum: 10}


end


    