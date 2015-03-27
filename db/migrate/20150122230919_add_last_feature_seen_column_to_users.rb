class AddLastFeatureSeenColumnToUsers < ActiveRecord::Migration
  def change
      add_column :users, :last_feature_seen, :integer, :default => 0
  end
end
