class RecipientsController < ApplicationController
	def new
		@user = User.find_by(id: params[:user_id])
		@message = Message.find_by(id: params[:message_id])
		@recipient = Recipient.new
		@recipient.user_id = @user.id
		@recipients_list = Recipient.all.where(user_id: @user.id)
		render :new
	end

	def create
		@user = User.find_by(id: params[:user_id])
		@recipient = Recipient.new(message_params)
		@recipient.user = @user
		
		if @recipient.save
			# Tell the UserMailer to send a welcome Email after save
			RecipientMailer.email_message(@recipient).deliver

			redirect_to( user_path(@user), notice: 'Message was sent?')
		else
			render :new
		end
	end

	def message_params
		params.require(:recipient).permit(:email, :first_name, :last_name)
	end
end