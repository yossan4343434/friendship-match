class CreateStandbies < ActiveRecord::Migration[5.1]
  def change
    create_table :standbies do |t|
      t.integer :user_id
      t.date :date

      t.timestamps
    end
  end
end
