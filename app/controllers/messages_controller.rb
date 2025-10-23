class MessagesController < ApplicationController
  def create
    @message = service.create_message(params[:chatroom_id], message_params)
    @chatroom = @message.chatroom
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end

  def service
    @service ||= MessageService.new
  end
end
