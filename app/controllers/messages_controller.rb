class MessagesController < ApplicationController
    def new
        @user = User.find_by(id: params[:user_id])
        @message = Message.new
        binding.pry
        @message.user = @user
        render :new
    end
#     def create
#        @message = Message.new(user_params)
#        if @message.save
#          redirect_to "/users/1"
#      else
#          render(:new)
#      end
#  end

#  def user_params
#    params.require(:message).permit(:text_message, :video_link, :photo_link, :send_date)
# end
end