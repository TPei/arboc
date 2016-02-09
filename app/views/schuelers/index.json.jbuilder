json.array!(@schuelers) do |schueler|
  json.extract! schueler, :id, :vorname, :nachname, :geschlecht_id, :klassenstufe, :klassenname, :schule_id, :verbleib_id
  json.url schueler_url(schueler, format: :json)
end
