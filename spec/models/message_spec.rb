require 'rails_helper'

RSpec.describe Message, type: :model do
  it "is valid with content and chatroom" do
    message = build(:message)
    expect(message).to be_valid
  end

  it "is invalid without content" do
    message = build(:message, content: nil)
    expect(message).not_to be_valid
  end

  it "belongs to a chatroom" do
    assoc = Message.reflect_on_association(:chatroom)
    expect(assoc.macro).to eq :belongs_to
  end
end
