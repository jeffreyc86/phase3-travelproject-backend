class CreateCities < ActiveRecord::Migration[6.0]
  def change
    create_table :cities do |t|
      t.string :name
      t.string :country
      t.string :continent
      t.text :description
      t.string :display_url

      t.timestamps
    end
  end
end
