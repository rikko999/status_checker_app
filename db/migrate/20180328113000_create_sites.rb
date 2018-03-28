class CreateSites < ActiveRecord::Migration[5.1]
  def change
    create_table :sites do |t|
      t.string :title
      t.integer :last_state
      t.string :url
      t.string :message

      t.timestamps
    end
  end
end
