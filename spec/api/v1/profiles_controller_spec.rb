require "rails_helper"

describe Api::V1::ProfilesController, type: :controller do 
  let(:json_parsed_response) { JSON.parse(response.body) } 
  let(:correct_profile_params) {
    { first_name: "Nichole", 
      last_name: "Beiner", 
      email: "nichole@bu.edu", 
      role: "alum", 
      contact_permissions: "public"
    }
  }

  let(:incorrect_profile_params) {
     { first_name: "Nichole", 
      last_name: "Beiner", 
      email: "nichole@notbu.edu", 
      role: "alum", 
      contact_permissions: "public"
    }
  }
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

  describe "POST #create" do
    it "creates a new profile" do
      expect { post :create, params: { profile: correct_profile_params } }.to change { Profile.count }.by 1
    end

    it "returns the profile as JSON when the params are correct" do
      post :create, params: { profile: correct_profile_params }

      expect(response.status).to eq 200
      expect(response.content_type).to eq("application/json")

      expect(json_parsed_response.keys).to eq ["id", "first_name", "last_name", "email", "role", "contact_permissions", "phone", "position", "company"]
    end

    it "returns an error when the payload is incorrect" do
      post :create, params: { profile: incorrect_profile_params }

      expect(response).to have_http_status(:unprocessable_entity)
      expect(json_parsed_response.keys).to eq ["error"]
      expect(json_parsed_response["error"]).to eq({"email"=> ["You must have an active BU email address to register."]})
    end
  end
end

