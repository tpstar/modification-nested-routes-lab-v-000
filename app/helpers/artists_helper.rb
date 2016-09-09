module ArtistsHelper
  def display_artist(song)
    song.artist.nil? ? link_to("Add Artist", edit_song_path(song)) : link_to(song.artist_name, artist_path(song.artist))
  end

  def artist_select(label, artists)
    select_tag "artist", options_from_collection_for_select(artists, "id", "name")
  end
end
