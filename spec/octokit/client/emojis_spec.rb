require 'helper'

describe Octokit::Client::Emojis do

  describe ".emojis", :vcr do
    it "returns all github emojis" do
      client = oauth_client
      emojis = client.emojis
      expect(emojis.metal).not_to be_empty
    end
  end # .emojis
end
