require_relative "environment"

Scraper.new(@db).scrape

all_pokemon = @db.execute("SELECT * FROM pokemon;")

all_pokemon.each do |row|
    puts "#{row[0]} #{row[1]} #{row[2]}"
end
