class Playlist
    def initialize(list)
        @list=list

    end

    def add_new
        counting
        print"Enter the number of songs you want to add:"
        n=gets.chomp.to_i
        n.times do
            print "Enter the song with the artist name:"
            song=gets.chomp
            @list<< song
            puts "#{song} is added to the playlist"
        end
        puts"All your new songs added to the playlist success fully"
        display

    end

    def display
        puts".......Your Playlist......."
        @list.each do |i|
            puts i
        end
        puts"---------------------------"
    end

    def counting
        puts"Count of the songs in your playlist is #{@list.count}"
    end
end
playlist = [
    "Blinding Lights - The Weeknd",
    "Shape of You - Ed Sheeran",
    "Levitating - Dua Lipa",
    "Bad Guy - Billie Eilish",
    "Uptown Funk - Mark Ronson ft. Bruno Mars",
    "Believer - Imagine Dragons",
    "Someone Like You - Adele",
    "Stay - The Kid LAROI & Justin Bieber",
    "Counting Stars - OneRepublic",
    "As It Was - Harry Styles"
]
play=Playlist.new(playlist)
play.display
play.add_new
play.counting
