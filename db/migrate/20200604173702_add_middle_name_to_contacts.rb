class AddMiddleNameToContacts < ActiveRecord::Migration[6.0]
  def change
    add_column :contacts, :middlename, :text
  end
end
