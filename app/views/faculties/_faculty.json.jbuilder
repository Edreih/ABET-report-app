json.extract! faculty, :id, :fname, :lname, :title, :office, :email, :phone, :created_at, :updated_at
json.url faculty_url(faculty, format: :json)
