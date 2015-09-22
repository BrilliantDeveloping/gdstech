class AddStripeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :customer_id, :string
    add_column :users, :last4, :integer
  end
end
