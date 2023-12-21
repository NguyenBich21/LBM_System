class CreateClassifies < ActiveRecord::Migration[7.0]
  def change
    create_table :classifies do |t|
      t.integer :classification_id
      t.string :type

      t.timestamps
    end
  end
end
