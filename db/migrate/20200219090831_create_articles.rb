class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :headline
      t.text :body
      t.references :editor, foreign_key: true

      t.timestamps
    end
  end
end
