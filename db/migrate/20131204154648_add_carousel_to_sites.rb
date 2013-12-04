class AddCarouselToSites < ActiveRecord::Migration
  def change
    add_column :sites, :show_carousel, :boolean, :default => true
  end
end
