class Wine < ApplicationRecord
    #Tienes muchas conbinaciones
    has_many :blends, dependent: :destroy
    #Tiene muchas cepas mediante las conbinaciones
    has_many :strains, through: :blends
    has_many :grades, dependent: :destroy
    has_many :oenologist, through: :grades
    #Que acepte los atributos anidados de dos modelos
    accepts_nested_attributes_for :blends, reject_if: :all_blank
    accepts_nested_attributes_for :grades, reject_if: :all_blank
end
