class CreateDescriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :descriptions do |t|
      t.integer :tag_id
      t.string :body

      t.timestamps
    end
  end
end
