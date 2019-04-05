class CreateNewsPapers < ActiveRecord::Migration[5.2]
  def change
    create_table :news_papers do |t|
      t.string :title, null: false
      t.integer :status, null: false, default: 0

      t.timestamps
    end
  end
end
