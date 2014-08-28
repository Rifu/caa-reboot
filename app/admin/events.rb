ActiveAdmin.register Event do
  filter :title
  index do
    column :title
    column :event_date
    default_actions
  end
  form do |f|
    f.inputs "Details" do
      f.input :title
      f.input :event_type, :as => :select, :collection => [['Showing', 'showing'], ['Manga Social', 'mangasocial'], ['Game Night', 'gamenight']]
      f.input :event_date
      f.input :event_start_time, :as => :time_picker
      f.input :event_end_time, :as => :time_picker
      f.input :event_location
      f.input :event_image, :label => "Event image [800x436 px]", :as => :file, :hint => f.template.image_tag(f.object.event_image.url)
    end
    f.actions
  end
end
