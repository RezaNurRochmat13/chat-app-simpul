require 'rails_helper'

RSpec.describe "Chatrooms", type: :request do
  describe "GET /index" do
    it "returns success" do
      get chatrooms_path
      expect(response).to have_http_status(:ok)
    end
  end

  describe "POST /create" do
    it "creates a chatroom" do
      expect {
        post chatrooms_path, params: { chatroom: { name: "New Room" } }
      }.to change(Chatroom, :count).by(1)
    end
  end
end
