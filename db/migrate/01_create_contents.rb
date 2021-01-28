class CreateContents < ActiveRecord::Migration[5.2]
  def change
    create_table :contents do |t|
      t.date :date
      t.string :title
      t.integer :rating
    end
  end
end
