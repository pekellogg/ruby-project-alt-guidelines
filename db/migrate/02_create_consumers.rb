class CreateConsumers < ActiveRecord::Migration[5.2]
  def change
    create_table :consumers do |t|
      t.string :name
    end
  end
end
