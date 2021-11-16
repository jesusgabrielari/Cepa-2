class CreateOenologistMagazines < ActiveRecord::Migration[5.2]
  def change
    create_table :oenologist_magazines do |t|
      t.references :oenologist, foreign_key: true
      t.references :magazine, foreign_key: true
      t.boolean :writer
      t.boolean :editor
      t.boolean :reviewer

      t.timestamps
    end
  end
end
