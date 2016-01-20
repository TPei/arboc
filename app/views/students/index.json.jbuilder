json.array!(@students) do |student|
  json.extract! student, :id, :first_name, :last_name, :salutation, :class_level, :class_name, :school_id
  json.url student_url(student, format: :json)
end
