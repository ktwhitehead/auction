class CreateCompanyDivisions < ActiveRecord::Migration[6.0]
  def change
    create_table :company_divisions do |t|
      t.string :name
      t.references :company

      t.timestamps
    end
  end
end
