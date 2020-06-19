class DropFamilies < ActiveRecord::Migration[6.0]
  def change
    drop_table :families
  end
end
