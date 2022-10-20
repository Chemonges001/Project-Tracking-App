class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.boolean :role
      t.string :password_digest
      t.integer :cohort_id

      t.timestamps
    end
  end
end
