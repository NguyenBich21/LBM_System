class CreateDepartments < ActiveRecord::Migration[7.0]
  def change
    create_table :departments do |t|
      t.integer :department_id
      t.string :department_name

      t.timestamps
    end
  end
end
