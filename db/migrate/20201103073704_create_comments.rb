class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :text ,null: false
      t.references :user, null: false, foregn_key: true
      t.references :prototype, null: false, foregn_key: true
      t.timestamps
    end
  end
end