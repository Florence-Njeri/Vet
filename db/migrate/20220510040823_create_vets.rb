class CreateVets < ActiveRecord::Migration[7.0]
  def change
    create_table :vets do |t|
      t.string :veterinarian
      t.string :disease
      t.string :livestock

      t.timestamps
    end
  end
end
