class AddShortToVisitors < ActiveRecord::Migration[6.0]
  def change
	  add_reference :visitors, :short
  end
end
