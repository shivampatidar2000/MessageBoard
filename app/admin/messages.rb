ActiveAdmin.register Message do

  permit_params :title, :description, :user_id
  
  preserve_default_filters!
  filter :user
  form do |f|
    input "details" do
    input =:title 
    input = :description
    input = :user
     end    
  end

  index do 
  column :title
  column :description
  column :user
  actions
  end
end
