require 'rails_helper'

RSpec.describe MessageService do
  let(:service) { described_class.new }
  let(:chatroom) { create(:chatroom) }

  describe "#create_message" do
    context "with valid params" do
      it "creates a new message" do
        params = { content: "Hello world" }

        expect {
          service.create_message(chatroom.id, params)
        }.to change(chatroom.messages, :count).by(1)

        message = chatroom.messages.last
        expect(message.content).to eq("Hello world")
      end
    end

    context "with invalid params" do
      it "returns an invalid message" do
        params = { content: nil }

        message = service.create_message(chatroom.id, params)
        expect(message).not_to be_valid
        expect(message.errors[:content]).to include("can't be blank")
      end
    end

    context "when chatroom does not exist" do
      it "raises ActiveRecord::RecordNotFound" do
        expect {
          service.create_message(99999, { content: "Hi" })
        }.to raise_error(ActiveRecord::RecordNotFound)
      end
    end
  end
end
