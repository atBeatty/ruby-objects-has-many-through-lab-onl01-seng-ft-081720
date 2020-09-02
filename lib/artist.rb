require 'pry'

class Artist

attr_accessor :name, :song, :genre


@@all = []

    def initialize(name)
        @name = name
        @genre = genre
        @@all << self
    end

    def self.all
        @@all
    end

    def new_song(name, genre)
        # binding.pry

        song = Song.new(name, self, genre)
        song
    end

    def songs
        Song.all.select {|song| song.artist == self}

    end

    def genres
        self.songs.collect do |song|
            song.genre    
        end

    end

    






end
