json.extract! movie, :id, :title, :description, :director, :release_date, :created_at, :updated_at
json.url movie_url(movie, format: :json)
