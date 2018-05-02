class Cli

  def call
    puts "Welcome to Aether Apparel"
    binding.pry
    menu
  end

  def menu
    puts "Welcome! List all new Men's styles on Aether Apparel? 1 for Yes and 2 for No."
      input = gets.strip
      if input.to_i == 1
        list_clothing
      elsif input.to_i == 2
      list_clothing[0]
      else
        return "Please re-launch CLI and enter 1 for Yes and 2 for No. Goodbye!"
      end
  end


      def list_clothing
        @stlyles.each do |style, price|
          puts "#{style}, #{price}"
        end
      end
end
