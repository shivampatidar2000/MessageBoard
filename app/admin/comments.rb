ActiveAdmin.register Comment, as: 'MessageComment' do

  permit_params :content, :message_id, :user_id
  
  form do |f|
    input "details" do 
    input :content
    input :message
    input :user
    end
  end
end
