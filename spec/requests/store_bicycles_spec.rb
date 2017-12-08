require 'rails_helper'

RSpec.describe "StoreBicycles", type: :request do
  describe "GET /store_bicycles" do
    it "works! (now write some real specs)" do
      get store_bicycles_path
      expect(response).to have_http_status(200)
    end
  end
end
