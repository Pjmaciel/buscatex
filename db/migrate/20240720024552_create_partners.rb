class CreatePartners < ActiveRecord::Migration[7.1]
  def change
    create_table :partners do |t|
      t.string :name
      t.string :owner
      t.string :color
      t.string :department

      t.timestamps
    end
  end
end
