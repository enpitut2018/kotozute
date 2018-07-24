json.extract! lecture, :id, :class_name, :class_id, :evaluation, :grade, :module, :department, :room, :day, :period, :attendance, :created_at, :updated_at
json.url lecture_url(lecture, format: :json)
