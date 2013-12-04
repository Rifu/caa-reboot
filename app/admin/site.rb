ActiveAdmin.register Site do
  index do
    column :title
    default_actions
  end
  form do |f|
    f.inputs "Details" do
      f.input :title
      f.input :default_showing_location
      f.input :default_showing_description
      f.input :default_showing_time, :label => "Default showing start time", :as => :time_picker
      f.input :default_showing_end_time, :as => :time_picker
      f.input :default_showing_image, :label => "Default showing image [330x180 px]", :as => :file, :hint => f.template.image_tag(f.object.default_showing_image.url)
      f.input :default_social_location
      f.input :default_social_description
      f.input :default_social_time, :label => "Default social start time", :as => :time_picker
      f.input :default_social_end_time, :as => :time_picker
      f.input :default_social_image, :label => "Default social image [330x180 px]", :as => :file, :hint => f.template.image_tag(f.object.default_social_image.url)
      f.input :default_game_night_location
      f.input :default_game_night_description
      f.input :default_game_night_time, :label => "Default game night start time", :as => :time_picker
      f.input :default_game_night_end_time, :as => :time_picker
      f.input :default_game_night_image, :label => "Default game night image [330x180 px]", :as => :file, :hint => f.template.image_tag(f.object.default_game_night_image.url)
      f.input :show_carousel, :as => :select
      f.input :carousel_one_href
      f.input :carousel_one_title
      f.input :default_carousel_one_image, :label => "Default carousel image one [880x560 px]", :as => :file, :hint => f.template.image_tag(f.object.default_carousel_one_image.url)
      f.input :carousel_two_href
      f.input :carousel_two_title
      f.input :default_carousel_two_image, :label => "Default carousel image two [880x560 px]", :as => :file, :hint => f.template.image_tag(f.object.default_carousel_two_image.url)
      f.input :carousel_three_href
      f.input :carousel_three_title
      f.input :default_carousel_three_image, :label => "Default carousel image three [880x560 px]", :as => :file, :hint => f.template.image_tag(f.object.default_carousel_three_image.url)
      f.input :default_site, :as => :select
    end
    f.actions
  end
end
