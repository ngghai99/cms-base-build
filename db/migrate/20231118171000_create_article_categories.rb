class CreateArticleCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :article_categories do |t|
      t.string :name, null: false
      t.text :description
      t.integer :parent_id
      t.boolean :active, null: false, default: true

      t.timestamps
    end

    add_index :article_categories, :parent_id
  end
end
