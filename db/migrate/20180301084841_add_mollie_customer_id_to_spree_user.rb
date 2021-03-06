class AddMollieCustomerIdToSpreeUser < ActiveRecord::Migration[5.1]
  def change
    return unless Spree::Gateway::MollieGateway.allow_one_click_payments?
    add_column Spree.user_class.table_name, :mollie_customer_id, :string
  end
end
