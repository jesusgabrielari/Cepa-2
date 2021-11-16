class Oenologist < ApplicationRecord
    has_many :oenologist_magazines, dependent: :destroy
    has_many :magazines, through: :oenologist_magazines
    has_many :grades
    has_many :wines, through: :grades
    #Que acepte los atributos anidados
    accepts_nested_attributes_for :oenologist_magazines,reject_if: :all_blank, allow_destroy: true
end
