class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.belongs_to :article, foreign_key: true
      t.text :body

      t.timestamps
    end
  end
end
