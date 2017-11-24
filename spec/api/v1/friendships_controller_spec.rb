require "rails_helper"

describe Api::V1::FriendshipsController, type: :controller do
  describe "POST #create" do
    let!(:user) { FactoryGirl.create(:user) }
    let!(:friend) { FactoryGirl.create(:user) }
    let(:json_parsed_response) { JSON.parse(response.body) } 

    
    it "creates a new friendship between two users" do
      session[:user_id] = user.id
      expect { post :create, params: { friend_id: friend.id} }.to change { Friendship.count }.by 1
    end

    it "returns the current_user's new friend as JSON" do
      session[:user_id] = user.id
      post :create, params: { friend_id: friend.id }

      expect(response.status).to eq 200
      expect(response.content_type).to eq("application/json")

      expect(json_parsed_response.keys).to eq(["id", "email", "first_name", "last_name"])
      expect(json_parsed_response["id"]).to eq(friend.id)
    end
    
    it "returns an error when the request is bad" do
      session[:user_id] = user.id
      post :create

      expect(response).to have_http_status(:unprocessable_entity)
      expect(json_parsed_response.keys).to eq ["error"]
      expect(json_parsed_response["error"]).to eq({"friend" => ["must exist"]})
    end
  end
end
