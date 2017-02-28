class UserSerializer < ActiveModel::Serializer
  attributes :id, :posts_count, :username
end
