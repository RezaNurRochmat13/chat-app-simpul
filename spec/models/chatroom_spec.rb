require 'rails_helper'

RSpec.describe Chatroom, type: :model do
  it "is valid with a name" do
    chatroom = build(:chatroom)
    expect(chatroom).to be_valid
  end

  it "is invalid without a name" do
    chatroom = build(:chatroom, name: nil)
    expect(chatroom).not_to be_valid
  end

  it "has many messages" do
    assoc = Chatroom.reflect_on_association(:messages)
    expect(assoc.macro).to eq :has_many
  end
end
