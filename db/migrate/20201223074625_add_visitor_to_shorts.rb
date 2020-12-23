class AddVisitorToShorts < ActiveRecord::Migration[6.0]
  def change
	  add_reference :shorts, :visitor
  end
end
