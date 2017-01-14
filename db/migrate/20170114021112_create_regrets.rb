class CreateRegrets < ActiveRecord::Migration[5.0]
  def change
    create_table :regrets do |t|
      t.integer :user_id
      t.text :message

      t.timestamps
    end
  end
end
