class AddColumnUid < ActiveRecord::Migration[5.0]
  def change
      add_column :shounins, :uid, :string
  end
end
