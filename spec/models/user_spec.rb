require 'spec_helper'

describe User do
  it "Creates a user" do
    user = User.new(
      name: "Charlie Watts",
      password: "Stones",
      password_confirmation: "Stones"
    )
    expect(user.valid?).to eq true
  end

  it "Only accepts user with valid attributes" do
    user = User.new(
      name: "",
      password: "Stones",
      password_confirmation: "Stones"
    )
    expect(user.valid?).to eq false
  end

end