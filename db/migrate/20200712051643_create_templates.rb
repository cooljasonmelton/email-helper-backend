class CreateTemplates < ActiveRecord::Migration[6.0]
  def change
    create_table :templates do |t|
      t.string :name
      t.string :subject
      t.text :body
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
