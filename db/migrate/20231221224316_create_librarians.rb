class CreateLibrarians < ActiveRecord::Migration[7.0]
  def change
    create_table :librarians do |t|
      t.integer :librarian_id
      t.string :name
      t.string :phone_number

      t.timestamps
    end
  end
end
