# By Southern-Claim (Iago Dórea Pinto)
require "colorize"

def self.init
puts "Welcome to MyLittleCodeSeller!".colorize(:green)
puts "You can change your Language with | set-lang (language)"
puts "You can play the Story mode or Sandbox mode! | mode story or mode sandbox | mode sandbox is enabled by default!"
end

class Game
	def self.sandbox
	scoma = "none"
	scomb = "none"
	scomc = "none"
	password = "admin"
	money = 0
	hackstate = ["FBI", "NASA", "WHITE HOUSE"]
	paswd = "none"
	
	puts "Welcome to the Sandbox! | use <help> to see the commands!"
		loop do
		com = gets.chomp
			if com == "help"
				puts "money | hack | bag | quit".colorize(:green)
			end
			if com == "quit"
				exit
			end
			if com == "bag"
				puts "Your special commands:".colorize(:green)
				puts scoma.colorize(:yellow)
				puts scomb.colorize(:yellow)
				puts scomc.colorize(:yellow)
			end
			if com == "hack"
				if password == "admin"
					puts "You dont have a password! create one with | chpass".colorize(:green)
				else
					puts "Your password: ".colorize(:green)
					paswd = gets.chomp
						if paswd == password
							puts "Hacking...".colorize(:green)
							money = money + rand(1..100)
							puts "You hacked the " + hackstate[rand(0..2)]
						else
							puts "Wrong password fool!".colorize(:red)
						end
				end
			end
			if com == "chpass"
				puts "Change password:".colorize(:green)
				password = gets.chomp
			end
		end
	end
end

init
Game.sandbox
