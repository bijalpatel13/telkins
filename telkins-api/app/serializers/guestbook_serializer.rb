class GuestbookSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :body, :artist, :song
end
