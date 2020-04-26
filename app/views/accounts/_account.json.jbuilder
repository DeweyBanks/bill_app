json.extract! account, :id, :name, :balance, :min_payment, :due_date, :date_paid, :amount_paid, :created_at, :updated_at
json.url account_url(account, format: :json)
