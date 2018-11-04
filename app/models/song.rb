class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    Song.artist.name
  end

  def artist_name=(name)
    name = Artist.find_or_create_by(name)
    Song.artist.name = name
  end
end
