
require "rails_helper"

RSpec.describe ProjectsController, type: :controller do

  login_student

  context "GET #index" do
    it "returns a success response" do
      get :index
      expect(response.success).to eq(true)
      expect(response).to be_successful
    end
  end

  context "GET #show" do
    let!(:project) { Project.create(title: "Test title", description: "Test description") }
    it "returns a success response" do
      get :show, params: { id: project }
      expect(response).to have_http_status(302)
    end
  end
end
