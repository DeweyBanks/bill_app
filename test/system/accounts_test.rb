require "application_system_test_case"

class AccountsTest < ApplicationSystemTestCase
  setup do
    @account = accounts(:one)
  end

  test "visiting the index" do
    visit accounts_url
    assert_selector "h1", text: "Accounts"
  end

  test "creating a Account" do
    visit accounts_url
    click_on "New Account"

    fill_in "Amount paid", with: @account.amount_paid
    fill_in "Balance", with: @account.balance
    fill_in "Date paid", with: @account.date_paid
    fill_in "Due date", with: @account.due_date
    fill_in "Min payment", with: @account.min_payment
    fill_in "Name", with: @account.name
    click_on "Create Account"

    assert_text "Account was successfully created"
    click_on "Back"
  end

  test "updating a Account" do
    visit accounts_url
    click_on "Edit", match: :first

    fill_in "Amount paid", with: @account.amount_paid
    fill_in "Balance", with: @account.balance
    fill_in "Date paid", with: @account.date_paid
    fill_in "Due date", with: @account.due_date
    fill_in "Min payment", with: @account.min_payment
    fill_in "Name", with: @account.name
    click_on "Update Account"

    assert_text "Account was successfully updated"
    click_on "Back"
  end

  test "destroying a Account" do
    visit accounts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Account was successfully destroyed"
  end
end
