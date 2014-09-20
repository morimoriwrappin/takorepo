require 'rails_helper'

RSpec.describe "Takos", :type => :request do
  describe "GET /takos" do
    it "works! (now write some real specs)" do
      get takos_path
      expect(response.status).to be(200)
    end
  end
end
