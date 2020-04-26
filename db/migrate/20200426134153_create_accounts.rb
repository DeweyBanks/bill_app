class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.string :name
      t.monetize :balance
      t.monetize :min_payment
      t.date :due_date
      t.date :date_paid
      t.monetize :amount_paid

      t.timestamps
    end
  end
end
