class CreateSpecialties < ActiveRecord::Migration[5.2]
  def change
    create_table :specialties do |t|
      t.string :specialty_name
      t.belongs_to :doctor, index: true
      t.timestamps
    end
  end
end
