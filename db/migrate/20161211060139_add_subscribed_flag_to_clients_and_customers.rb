class AddSubscribedFlagToClientsAndCustomers < ActiveRecord::Migration
  def change
    add_column :clients, :subscribed, :boolean, default: true
    add_column :customers, :subscribed, :boolean, default: true
  end
end
