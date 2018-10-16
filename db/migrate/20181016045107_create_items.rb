class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :task_id
      t.string :description
      t.timestamps
    end
  end
end
