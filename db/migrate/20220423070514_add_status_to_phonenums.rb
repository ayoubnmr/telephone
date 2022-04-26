class AddStatusToPhonenums < ActiveRecord::Migration[7.0]
  def change
    add_column :phonenums, :status, :string
  end
end
