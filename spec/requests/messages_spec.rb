require 'rails_helper'

RSpec.describe "Messages", type: :request do
  let(:chatroom) { create(:chatroom) }

  describe "POST /create" do
    it "creates a new message" do
      expect {
        post chatroom_messages_path(chatroom), params: { message: { content: "Hello" } }
      }.to change(Message, :count).by(1)
    end
  end
end
