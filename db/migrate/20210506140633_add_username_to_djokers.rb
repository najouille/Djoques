class AddUsernameToDjokers < ActiveRecord::Migration[6.1]
  def change
    add_column :djokers, :username, :string
  end
end
