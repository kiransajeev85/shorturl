class AddForeignKeyToShort < ActiveRecord::Migration[6.0]
  def change
	  add_foreign_key :shorts, :visitors
  end
end
