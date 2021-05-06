class CreateDjoques < ActiveRecord::Migration[6.1]
  def change
    create_table :djoques do |t|
      t.text :djoke
      t.date :date
      t.integer :like

      t.timestamps
    end
  end
end
