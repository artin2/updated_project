class MessagesController < ApplicationController
  def create
    @message = current_user.messages.create(msg_params)
    puts(msg_params)
    if @message.save
      room = @message.room
      RoomChannel.broadcast_to room,
                           message: @message,
                           user: @message.user,
                           timestamp: @message.timestamp
      # redirect_to room_path(msg_params[:room_id])
      head :no_content
    else
      redirect_to room_path(msg_params[:room_id]), flash: { alert: "Message not saved!" }
    end
  end

  private
  def msg_params
    params.require(:message).permit(:content, :room_id)
  end
end
