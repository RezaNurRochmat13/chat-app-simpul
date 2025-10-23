class MessageService
  def create_message(chatroom_id, params)
    chatroom = Chatroom.find(chatroom_id)
    message = chatroom.messages.create(params)
    message
  end
end
