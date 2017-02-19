json.extract! note, :id, :Title, :Notes, :created_at, :updated_at
json.url note_url(note, format: :json)