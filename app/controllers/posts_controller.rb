class PostsController < ApplicationController
    before_action :authenticate_user!
    before_action :find_post, only:[:show, :destroy, :edit]
    # before_action :find_message, only:[:new]

    def index
        @posts = Post.all 
    end
    
    def new
        @post = Post.new
        # @messages.post.build
    end
    
    def create
        @post = Post.new(post_params)
        @post.user_id = current_user.id
        if @post.save
         redirect_to "http://localhost:3000/posts", notice: "Successfully uploaded."  
       else
         render :new
       end
    end
    
    def show
        @post = Post.find(params[:id])

    end
     def destroy
     @post.destroy
     redirect_to "http://localhost:3000/posts"
     end

    private
    def post_params
     params.require(:post).permit(:image,:video_ss)
    end

    def find_post
        @post = Post.find(params[:id])
    end
    # def find_message
    #     @message = Message.find_by(params[:id])
    # end
end
