class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.integer :user_id
      t.integer :interest_id
      t.datetime :created_at
      t.integer :rank
      t.integer :upvotes

      t.timestamps
    end
  end
end
