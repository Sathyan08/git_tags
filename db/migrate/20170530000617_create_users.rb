class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string  :login, unique: true, null: false
      t.string :email, unique: true, null: false
    end
  end
end
