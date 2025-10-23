class ChatroomService
  def all_chatrooms
    Chatroom.all
  end

  def find_chatroom(id)
    Chatroom.find(id)
  end

  def create_chatroom(params)
    Chatroom.create(params)
  end
end
