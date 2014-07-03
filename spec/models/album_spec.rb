require 'spec_helper'

describe Album do
  it "Creates an album" do
    album = Album.new(
      title: "Beggars Banquet",
      artist: "Rolling Stones"
    )
    expect(album.valid?).to be true
  end
end