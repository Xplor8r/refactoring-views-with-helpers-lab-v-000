module SongsHelper
  def display_artist(song)
    if song.artist_name
      link_to song.artist, artist_path(song.artist_name)
    else
      link_to "Add Artist", edit_song_path(song)
    end
  end
end
