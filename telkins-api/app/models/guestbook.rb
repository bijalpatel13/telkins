class Guestbook < ApplicationRecord
    validates :name, :body, presence: true
    validates :song, presence: true, if: lambda { self.artist.present? }
    validates :artist, presence: true, if: lambda { self.song.present? }
end