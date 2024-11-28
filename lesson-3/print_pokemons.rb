def print_pokemons(num)
    pokemons_list = []
    num.times do |i|
      print 'Enter pokemon name: '
      pokemon_name = gets.chomp
      print 'Enter pokemon color: '
      pokemon_color = gets.chomp
      pokemon = {name: pokemon_name, color: pokemon_color}
      pokemons_list << pokemon
    end
    pokemons_list
  end