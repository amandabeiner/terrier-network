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

  describe "PATCH #udpate" do 
    let!(:profile) { FactoryGirl.create(:profile) }

    it "returns the edited profile as JSON when the params are correct" do
      patch :update, params: { id: profile.id, email: "newEmail@bu.edu" }

      expect(response).to have_http_status(:ok)
      expect(response.content_type).to eq("application/json")
      expect(json_parsed_response.keys).to eq ["id", "email", "first_name", "last_name", "role", "contact_permissions", "phone", "position", "company"]
      expect(json_parsed_response["email"]).to eq "newEmail@bu.edu"
    end

    it "returns errors when the params are not correct" do
      patch :update, params: { id: profile.id, email: "" }

      expect(response).to have_http_status :unprocessable_entity
      expect(json_parsed_response.keys).to eq ["error"]
      expect(json_parsed_response["error"]).to eq({"email" => ["can't be blank", "You must have an active BU email address to register."]})
    end
  end 

  describe "DELETE #destroy" do 
    let!(:profile) { FactoryGirl.create(:profile) }

    it "returns the deleted profile as JSON" do
      delete :destroy, params: { id: profile.id }

      expect(response).to have_http_status(:ok)
      expect(response.content_type).to eq("application/json")
      expect(json_parsed_response.keys).to eq ["id", "first_name", "last_name", "email", "role", "contact_permissions", "phone", "position", "company"]
      expect(json_parsed_response["id"]).to eq profile.id
    end

    it "successfully deletes a product" do
      expect { delete :destroy, params: { id: profile.id } }.to change { Profile.count}.by -1

    end
  end
end

