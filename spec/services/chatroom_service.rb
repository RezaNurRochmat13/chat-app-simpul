require 'rails_helper'

RSpec.describe ChatroomService do
  let(:service) { described_class.new }

  describe "#all_chatrooms" do
    it "returns all chatrooms" do
      chatroom1 = create(:chatroom)
      chatroom2 = create(:chatroom)

      expect(service.all_chatrooms).to match_array([ chatroom1, chatroom2 ])
    end
  end

  describe "#find_chatroom" do
    it "returns the chatroom with the given id" do
      chatroom = create(:chatroom)

      expect(service.find_chatroom(chatroom.id)).to eq(chatroom)
    end

    it "raises ActiveRecord::RecordNotFound if chatroom not found" do
      expect { service.find_chatroom(99999) }.to raise_error(ActiveRecord::RecordNotFound)
    end
  end

  describe "#create_chatroom" do
    it "creates a new chatroom with valid params" do
      params = { name: "New Room" }

      expect { service.create_chatroom(params) }.to change(Chatroom, :count).by(1)
      expect(Chatroom.last.name).to eq("New Room")
    end

    it "does not create chatroom with invalid params" do
      params = { name: nil }

      chatroom = service.create_chatroom(params)
      expect(chatroom).not_to be_valid
    end
  end
end
