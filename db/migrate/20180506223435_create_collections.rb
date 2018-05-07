class CreateCollections < ActiveRecord::Migration[5.2]
  def change
    create_table :collections do |t|
      t.string :title
      t.references :note
      t.references :user

      t.timestamps
    end
  end
end
