class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    Artist.name
  end

  def artist_name=(name)
    name = Artist.find_or_create_by(name)
  end
end
