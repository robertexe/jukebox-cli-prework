songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

# def say_hello(name)
#   "Hi #{name}!"
# end
#
# puts "Enter your name:"
# users_name = gets.chomp
#
# puts say_hello(users_name)


def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song_name, index|
    puts "#{index+1}. #{song_name}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song_input = gets.chomp

  i = 0;
  while i<songs.length do
    if song_input == songs[i]
      puts "Playing #{songs[i]}"
      break
    elsif songs[i] == songs[(song_input.to_i)-1]
    puts "Playing #{songs[i]}"
      break
    else
      puts "Invalid input, please try again"
    end
    i+=1
  end
end
