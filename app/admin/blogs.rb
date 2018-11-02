ActiveAdmin.register Blog do
  permit_params :content
  form do |f|
      f.inputs 'Blog' do
        f.input :content, as: :quill_editor
      end
      f.actions
    end
end
