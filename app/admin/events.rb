ActiveAdmin.register Event do
  index do
    column :title
    default_actions
  end
  form do |f|
    f.inputs "Details" do
      f.input :title
      f.input :event_type
      f.input :event_date
      f.input :event_start_time, :as => :time_picker
      f.input :event_end_time, :as => :time_picker
      f.input :event_location
      f.input :event_image, :as => :file, :hint => f.template.image_tag(f.object.event_image.url)
      f.input :event_image_thin, :as => :file, :hint => f.template.image_tag(f.object.event_image_thin.url)
    end
    f.actions
  end
end
