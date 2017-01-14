json.extract! guestbook, :id, :user_id, :message, :created_at, :updated_at
json.url guestbook_url(guestbook, format: :json)