class AddColumnsToClients < ActiveRecord::Migration
  def change
    add_timestamps(:clients)

    add_column :clients, :first_name, :string
    add_column :clients, :last_name, :string
  end
end
