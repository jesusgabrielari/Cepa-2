class Strain < ApplicationRecord
    has_many :wines_strains
    has_many :wines, through: :wines_strains
    #has_many :blends 
    #has_many :wines, through: :blends
end
