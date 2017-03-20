class CreateRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :ratings do |t|
      t.string :reviewedBy
      t.integer :safety
      t.integer :performance
      t.integer :technology
      t.integer :interior
      t.integer :reliability
      t.integer :overall, default: 0
      t.references :car, foreign_key: true, index: true

      t.timestamps
    end
  end
end
