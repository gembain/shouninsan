class CreateShounins < ActiveRecord::Migration[5.0]
  def change
    create_table :shounins do |t|
      t.string :url
      t.text :description
      t.string :email
      t.boolean :approval
      t.text :comment

      t.timestamps
    end
  end
end
