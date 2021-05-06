class CreateLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :likes do |t|
      t.references :djoque, null: false, foreign_key: true
      t.references :djoker, null: false, foreign_key: true

      t.timestamps
    end
  end
end
