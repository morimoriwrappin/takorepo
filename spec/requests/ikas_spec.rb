require 'rails_helper'

RSpec.describe "Ikas", :type => :request do
  describe "GET /ikas" do
    it "works! (now write some real specs)" do
      get ikas_path
      expect(response.status).to be(200)
    end
  end
end
