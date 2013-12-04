class AddTitlesToSites < ActiveRecord::Migration
  def change
    add_column :sites, :carousel_one_title, :string
    add_column :sites, :carousel_two_title, :string
    add_column :sites, :carousel_three_title, :string
  end
end
