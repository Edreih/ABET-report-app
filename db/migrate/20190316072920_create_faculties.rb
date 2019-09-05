class CreateFaculties < ActiveRecord::Migration[5.2]
  def change
    create_table :faculties do |t|
      t.string :fname
      t.string :lname
      t.string :title
      t.string :office
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
