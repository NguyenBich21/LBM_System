class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.integer :student_id
      t.string :name
      t.date :date_of_birth
      t.integer :departmet_id
      t.string :address
      t.string :phone_number

      t.timestamps
    end
  end
end
