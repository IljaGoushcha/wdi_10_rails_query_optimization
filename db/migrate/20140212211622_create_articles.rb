class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.references :user, index: true
      t.string :title
      t.string :url
      t.integer :comments_count, default: 0, null: false

      t.timestamps
    end
  end
end
