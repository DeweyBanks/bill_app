class AddTotalBalanceToUsers < ActiveRecord::Migration[6.0]
  def change
    add_monetize :users, :total_balance
  end
end
