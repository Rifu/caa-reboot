ActiveAdmin.register Page do
  index do
    column :title
    default_actions
  end
  form do |f|
    f.inputs "Details" do
      f.input :title
      f.input :content, :as => :html_editor
    end
    f.actions
  end
  
end
