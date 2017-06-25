class CreateChampions < ActiveRecord::Migration[5.1]
  def change
    create_table :champions do |t|
      t.string :name
      t.string :email
      t.string :origin
      t.string :language
      t.string :password_digest
      t.string :phone

      t.timestamps
    end
    add_index :champions, :email, unique: true
  end
end
