class CreateUsers < ActiveRecord::Migration[7.1]
  def change

    create_table :interviewer_profiles do |t|
      t.integer :slot_length
      t.boolean :isPaused
      t.boolean :isVerified

      t.timestamps
    end

    create_table :interviewee_profiles do |t|
      t.boolean :isVerified
      t.boolean :isPaused

      t.timestamps
    end

    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.string :phone
      t.string :organization
      t.integer :yoe

      t.references :interviewer_profile, null: false, foreign_key: true
      t.references :interviewee_profile, null: false, foreign_key: true

      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end
