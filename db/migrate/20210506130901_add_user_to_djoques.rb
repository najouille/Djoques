class AddUserToDjoques < ActiveRecord::Migration[6.1]
  def change
    add_reference :djoques, :djoker, null: false, foreign_key: true
  end
end
