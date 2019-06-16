class CreateVersions < ActiveRecord::Migration[5.2]
  def change
    create_table :versions do |t|
      t.references :document, foreign_key: true

      t.timestamps
    end
  end
end
