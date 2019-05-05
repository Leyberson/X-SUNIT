class CreateWitnesses < ActiveRecord::Migration[5.2]
  def change
    create_table :witnesses do |t|
      t.references :survivor, foreign_key: true
      t.integer :witness_id

      t.timestamps
    end
  end
end
