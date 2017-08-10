class CreatePostScores < ActiveRecord::Migration[5.0]
  def change
    create_table :post_scores do |t|
      t.integer :post_id, :index => true
      t.integer :score
      t.integer :user_id

      t.timestamps
    end
  end
end
