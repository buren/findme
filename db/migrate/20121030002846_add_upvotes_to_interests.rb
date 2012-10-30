class AddUpvotesToInterests < ActiveRecord::Migration
  def change
    add_column :interests, :upvotes, :integer
  end
end
