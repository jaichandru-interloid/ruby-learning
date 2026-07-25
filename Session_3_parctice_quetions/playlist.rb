class Playlist
  def initialize(list)
      @list=list
  end

  def add_new(title, duration)
    song={title: title, duration: duration}
    @list<< song
    puts"#{song[:title]} has been add to te palylist successfully."
  end

  def remove_song(title)
    song=@list.find{|s| s[:title].downcase==title.downcase}
    if song
      @list.delete(song)
      puts "'#{song[:title]}' has been removed from the playlist."
    else
      puts"Song not found in the playlist."
    end
  end


  def duration_total
    total_seconds=0
    @list.each do|song|
      minutes,seconds = song[:duration].split(":").map(&:to_i)
      total_seconds += minutes*60+seconds
    end
    total_minutes = total_seconds/60
    remaining_seconds = total_seconds%60
    puts"Total duration of the playlist is : #{total_minutes}:#{remaining_seconds}."
  end

  def display
    puts".......Your Playlist......."
    @list.each do |song|
      puts "#{song[:title]} #{song[:duration]}"
    end
    puts"---------------------------"
  end

end
playlist = [
  { title: "Blinding Lights - The Weeknd", duration: "3:20" },
  { title: "Shape of You - Ed Sheeran", duration: "3:53" },
  { title: "Levitating - Dua Lipa", duration: "3:23" },
  { title: "Bad Guy - Billie Eilish", duration: "3:14" },
  { title: "Uptown Funk - Mark Ronson ft. Bruno Mars", duration: "4:30" },
  { title: "Believer - Imagine Dragons", duration: "3:24" },
  { title: "Someone Like You - Adele", duration: "4:45" },
  { title: "Stay - The Kid LAROI & Justin Bieber", duration: "2:21" },
  { title: "Counting Stars - OneRepublic", duration: "4:17" },
  { title: "As It Was - Harry Styles", duration: "2:47" }
]

play=Playlist.new(playlist)

play.add_new("Dangerous - Mickle Jackson", "4:55")
play.display
play.duration_total

play.remove_song("Blinding Lights - The Weeknd")
play.display
play.duration_total
