class CreateGrades < ActiveRecord::Migration[5.2]
  def change
    create_table :grades do |t|
      t.references :oenologist, foreign_key: true
      t.references :wine, foreign_key: true
      t.integer :score

      t.timestamps
    end
  end
end
