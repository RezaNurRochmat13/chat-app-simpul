class ChatroomsController < ApplicationController
  def index
    @chatrooms = service.all_chatrooms
    @chatroom = Chatroom.new
  end

  def show
    @chatroom = service.find_chatroom(params[:id])
    @message = Message.new
  end

  def create
    @chatroom = service.create_chatroom(chatroom_params)
    redirect_to @chatroom
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:name)
  end

  def service
    @service ||= ChatroomService.new
  end
end
