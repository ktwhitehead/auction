class CreateAuctions < ActiveRecord::Migration[6.0]
  def change
    create_table :auctions do |t|
      t.string :name
      t.text :description
      t.references :company_division

      t.timestamps
    end
  end
end
