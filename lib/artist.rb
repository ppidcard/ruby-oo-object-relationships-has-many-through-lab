class Artist
    attr_accessor :name
    @@all = []

    def initialize(name)
        self.name = name
        self.save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def new_song(name, genre)
        song = Song.new(name, self, genre)
        song
    end

    def genres
        songs.map{|song| song.genre}
    end
end
