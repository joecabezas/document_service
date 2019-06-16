class CreateVersions < ActiveRecord::Migration[5.2]
  def change
    create_table :versions do |t|
      t.string :key, index: true
      t.references :document

      t.timestamps
    end
  end
end
