require "rails_helper"

describe Api::V1::ProfilesController, type: :controller do 
  let(:json_parsed_response) { JSON.parse(response.body) } 
  describe "GET #show" do
    let!(:profile) { FactoryGirl.create(:profile) }

    it "returns the profile as JSON" do
      get :show, params: { id: profile.id }
      
      expect(response).to have_http_status(:ok)
      expect(response.content_type).to eq("application/json")
      expect(json_parsed_response.keys).to eq ["id", "first_name", "last_name", "email", "role", "contact_permissions", "phone", "position", "company"]
      expect(json_parsed_response["id"]).to eq profile.id  
    end
  end
end

