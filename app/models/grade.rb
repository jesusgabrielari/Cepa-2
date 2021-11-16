class Grade < ApplicationRecord
  belongs_to :oenologist
  belongs_to :wine
end
