json.extract! champion, :id, :name, :email, :origin, :language, :password_digest, :created_at, :updated_at
json.url champion_url(champion, format: :json)
