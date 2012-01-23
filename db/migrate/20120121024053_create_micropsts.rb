class CreateMicropsts < ActiveRecord::Migration
  def change
    create_table :micropsts do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
