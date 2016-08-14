class UpdateNameOnClientToBusinessName < ActiveRecord::Migration
  def change
    rename_column :clients, :name, :business_name
  end
end
