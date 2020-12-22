class CreateShorts < ActiveRecord::Migration[6.0]
  def change
    create_table :shorts do |t|
      t.string :long_url
      t.string :short_url

      t.timestamps
    end
  end
end
