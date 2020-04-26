class Account < ApplicationRecord
  has_paper_trail on: [:update], only: [:balance_cents, :min_payment_cents, :amount_paid_cents]
  belongs_to :user
  after_save :update_user_balance


  private

  def update_user_balance
    bal = user.accounts.map(&:balance_cents).inject(0, &:+)
    user.total_balance_cents = bal
    user.save
  end
end
