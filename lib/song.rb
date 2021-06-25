class Song 
    #define song class initialized with a name, artist, and genre 
      #create an attr_accessor for name, artist, genre
      attr_accessor :name, :artist, :genre 
    #create a class variable @@count=0 
      @@count = 0 
    #create a class varialbe for artist - this varialbe will stay the same no matter how many songs are created 
      @@artists = []
    #create a class variable for genre 
      @@genres = []
    #create a hash for genere count 
    @@genre_count = {}
    #create a hash for artist count 
    @@artist_count = {}
    def initialize(name, artist, genre)
        @name=name
        @artist=artist 
        @genre=genre
      #initialize method should use the @@count variable and increment the value of that variable by 1 
      @@count +=1
      #Adding @artist to the array 
      @@artists << @artist 
      #adding @genre to the array
      @@genres << @genre 
    end 
    
    def name 
      @name 
    end 
    
    def artist 
      @artist 
    end 
    
    def genre
      @genre 
    end   
    #write a class method, .count, that returns the total number of songs created
        def self.count
        @@count 
      end 
    #write a class method, .genres, that returns an array of all the genres of existing songs
      def self.genres 
        @@genres.uniq 
      end   
    #write a class method that returns a unique array of artists
      def self.artists
        @@artists.uniq 
      end   
    #write a class method that returns a hash of genres and the number of songs that have those genres 
      def self.genre_count 
        #need a loop, make a key, iterate over the genere 
        #hash[genre] = the number of times in @@genres
        @genres |genre|
      end 
    #write a class method that returns a hash of artists and the number of songs that have those artists
      def self.artist_count 
        @artists |artist| 
      end
    
  end