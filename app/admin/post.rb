ActiveAdmin.register Post do
  index do
    column :title
    default_actions
  end
  form do |f|
    f.inputs "Details" do
      f.input :title
      f.input :text, :as => :html_editor
      f.input :publish_date, :as => :date_picker
      f.input :author
    end

    f.actions
  end


end
