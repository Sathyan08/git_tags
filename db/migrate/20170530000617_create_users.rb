class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string  :login, unique: true
      t.string :email, unique: true
    end
  end
end
