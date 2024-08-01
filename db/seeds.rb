Movie.destroy_all

movies = [
  { title: 'The Shawshank Redemption', description: 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.', director: 'Frank Darabont', release_date: '1994-09-23' },
  { title: 'The Godfather', description: 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.', director: 'Francis Ford Coppola', release_date: '1972-03-24' },
  { title: 'The Dark Knight', description: 'When the menace known as The Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham.', director: 'Christopher Nolan', release_date: '2008-07-18' },
  { title: 'Pulp Fiction', description: 'The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.', director: 'Quentin Tarantino', release_date: '1994-10-14' },
  { title: 'Schindler\'s List', description: 'In German-occupied Poland during World War II, industrialist Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis.', director: 'Steven Spielberg', release_date: '1993-12-15' }
]

movies.each do |movie|
  Movie.create!(movie)
end

puts "Seeded #{Movie.count} movies."
