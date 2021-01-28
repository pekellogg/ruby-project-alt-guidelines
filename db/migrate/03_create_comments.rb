class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.date :date
      t.string :text # chose string vs. text datatype due to 255 char limit
      t.integer :user_id
      t.integer :content_id
    end
  end
end
