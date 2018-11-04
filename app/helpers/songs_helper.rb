module SongsHelper
  def display_artist(song)
    if song.artist_name
      link_to song.artist, artist_path(song.artist.id)
    else
      link_to "Add Artist", song_path(song)
    end
  end
end
