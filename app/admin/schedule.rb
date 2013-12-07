ActiveAdmin.register Schedule do
  index do
    column :title
    default_actions
  end
  form do |f|
    f.inputs "Details" do
      f.input :title
      f.input :events, :as => :check_boxes
      f.input :weekly_one
      f.input :weekly_one_image, :label => "Weekly one image [800x436 px]", :as => :file, :hint => f.template.image_tag(f.object.weekly_one_image.url)
      f.input :weekly_two
      f.input :weekly_two_image, :label => "Weekly two image [800x436 px]", :as => :file, :hint => f.template.image_tag(f.object.weekly_two_image.url)
    end
    f.actions
  end
  
end
