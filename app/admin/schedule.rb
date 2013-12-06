ActiveAdmin.register Schedule do
  index do
    column :title
    default_actions
  end
  form do |f|
    f.inputs "Details" do
      f.input :title
      f.input :events, :as => :check_boxes
    end
    f.actions
  end
  
end
