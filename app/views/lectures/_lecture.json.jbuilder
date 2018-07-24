json.extract! lecture, :id, :name, :contents, :created_at, :updated_at
json.url lecture_url(lecture, format: :json)
