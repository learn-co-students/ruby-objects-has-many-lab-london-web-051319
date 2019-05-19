class Song

   attr_accessor :name, :artist

   @@all = []

   def self.all
      @@all
   end

   def initialize(name, artist = nil)
      @name = name
      @artist = artist
      @@all << self
   end

 def artist_name
   if @artist != nil # also written as if self.artist
      @artist.name # self.artist.name
   elsif @artist = nil
      Artist.all.each do |person|
         if person.songs.include?(self)
            person.name
         else
            nil
         end
      end
   end
 end

end