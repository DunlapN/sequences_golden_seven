class CreateGuesses < ActiveRecord::Migration[5.0]
  def change
    create_table :guesses do |t|
      t.integer :first_number
      t.integer :second_number
      t.integer :third_number

      t.timestamps
    end
  end
end
