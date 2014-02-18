class MessagesController < ApplicationController
    def new
        @user = User.find_by(id: params[:user_id])
        @message = Message.new
        @message.user = @user
        render :new
    end
    def create
       @user = User.find_by(id: params[:user_id])
       @message = Message.new(user_params)
       @message.user = @user
       if @message.save
         redirect_to "/users/1"
     else
         render(:new)
     end
 end

 def user_params
    params.require(:message).permit(:text_message, :video_link, :photo_link, :send_date)
end
end