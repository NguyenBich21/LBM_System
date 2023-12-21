json.extract! student, :id, :student_id, :name, :date_of_birth, :departmet_id, :address, :phone_number, :created_at, :updated_at
json.url student_url(student, format: :json)
