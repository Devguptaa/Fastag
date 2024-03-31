json.extract! transaction, :id, :amount, :location, :fastag_id, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
