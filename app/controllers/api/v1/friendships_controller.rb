class Api::V1::FriendshipsController < Api::ApiController
  def create
    friendship = current_user.friendships.build(friend_id: params[:friend_id])
    
    if friendship.save
      new_friend = User.find(params[:friend_id])
      render json: new_friend
    else
      render_object_errors(friendship)
    end
  end
end
