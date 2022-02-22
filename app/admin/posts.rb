ActiveAdmin.register Post do
  permit_params :title, :content, :image

   form do |f| 
     f.inputs 'Post' do 
       f.input :title 
       f.input :content, as: :simplemde_editor
       f.label "Upload image:"
       f.file_field :image 
     end 
     f.actions do 
       f.action :submit, :as => :button 
       f.action :cancel, :as => :link 
     end 
   end 
end




