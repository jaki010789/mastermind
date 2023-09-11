require 'colorize'

class Mastermind

    COLORS = %w[red green blue yellow magenta cyan]
    CODE_LENGTH = 4
    MAX_JUGADAS = 12
  
    def initialize
      @secret_code = generate_secret_code
      @jugadas = 0
    end
  
    def play
      puts "-------------------------------------------------------------------------------------------------------"
      puts "-------------------------------¡BIENVENIDO A MASTERMIND!-----------------------------------------------"
      puts "-------------------------------------------------------------------------------------------------------"
      puts "Mastermind es un juego de habilidad y lógica que consiste en descubrir una secuencia de colores oculta."
      puts "-------------------------------------------------------------------------------------------------------"
      puts "Adivina el código secreto de colores (#{CODE_LENGTH} colores en total) usando las siguientes opciones: "
      puts "-------------------------------------------------------------------------------------------------------"
  
      COLORS.each do |color|
        print color.colorize(color.to_sym) + " "
      end
  
      puts "\n------------------------------------------------------------------------------------------------------"
  
      until @jugadas >= MAX_JUGADAS
        guess = get_player_guess
  
        if correct_guess?(guess)
          puts "¡Felicidades! Has adivinado el código secreto: #{@secret_code.join(', ')}"
          break
        else
          feedback = provide_feedback(guess)
          puts "Intento #{@jugadas + 1}: #{guess.map { |color| color.colorize(color.to_sym) }.join(', ')} - Feedback: #{feedback.join(', ')}"
        end
      end
  
      puts "El juego ha terminado. El código secreto era: #{@secret_code.join(', ')}" unless @jugadas < MAX_JUGADAS
    end
  
    def generate_secret_code
      CODE_LENGTH.times.map { COLORS.sample }
    end
  
    def get_player_guess
      print "Introduce tu adivinanza (separando los colores con espacios): "
      @jugadas += 1
      gets.chomp.downcase.split
    end
  
    def correct_guess?(guess)
      guess == @secret_code
    end
  
    def provide_feedback(guess)
      feedback = []
      guess.each_with_index do |color, index|
        if @secret_code.include?(color)
          if color == @secret_code[index]
            feedback << 'black'.light_black
          else
            feedback << 'white'.light_cyan
          end
        else
          feedback << 'empty'.light_red
        end
      end
      feedback.shuffle
    end
  end
  
  game = Mastermind.new
  game.play