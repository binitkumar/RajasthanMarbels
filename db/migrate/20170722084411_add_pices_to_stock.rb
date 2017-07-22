class AddPicesToStock < ActiveRecord::Migration[5.0]
  def change
    add_column :stocks, :pieces, :integer
  end
end
