class CreateBaskets < ActiveRecord::Migration[5.2]
  def change
    create_table :baskets do |t|
      t.references :user, index: true, unique: true, null: false, foreign_key: true
      t.timestamps
    end
  end
end
