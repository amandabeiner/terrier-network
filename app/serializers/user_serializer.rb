class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :first_name, :last_name

  def name
    "#{object.first_name} #{object.last_name}"
  end
end
