json.array!(@journal_entries) do |journal_entry|
  json.extract! journal_entry, :id
  json.url journal_entry_url(journal_entry, format: :json)
end
