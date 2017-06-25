class CreateRefugees < ActiveRecord::Migration[5.1]
  def change
    create_table :refugees do |t|
      t.string :name
      t.string :email
      t.string :origin
      t.string :language
      t.string :password_digest
      t.text :problems
      t.string :phone

      t.timestamps
    end
    add_index :refugees, :email, unique: true
  end
end
