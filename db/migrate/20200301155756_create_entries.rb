class CreateEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :entries do |t|
      t.references :user, foreign_key: { on_delete: :cascade }
      t.float :weight
      t.date :date_entered
      t.timestamps
    end
  end
end
