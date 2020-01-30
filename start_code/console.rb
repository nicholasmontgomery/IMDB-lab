require_relative('models/movie')
require_relative('models/star')
require_relative('models/casting')

require('pry-byebug')

Movie.delete_all()
Star.delete_all()
Casting.delete_all()

movie1 = Movie.new({
  'title' => 'Batman',
  'genre' => 'Superhero'
  })
movie1.save()

movie2 = Movie.new({
  'title' => 'Iron Man',
  'genre' => 'Superhero'
  })
movie2.save()

movie3 = Movie.new({
  'title' => '1917',
  'genre' => 'Historical'
  })
movie3.save()


star1 = Star.new({
  'first_name' => 'Michael',
  'last_name' => 'Keaton'
  })
star1.save()

star2 = Star.new({
  'first_name' => 'Robert',
  'last_name' => 'Downey'
  })
star2.save()

star3 = Star.new({
  'first_name' => 'Eugene',
  'last_name' => 'Kim'
  })
star3.save()


casting1 = Casting.new({
  'movie_id' => movie1.id,
  'star_id' => star1.id,
  'fee' => 8
  })
casting1.save()

casting2 = Casting.new({
  'movie_id' => movie2.id,
  'star_id' => star2.id,
  'fee' => 20
  })
casting2.save()

casting3 = Casting.new({
  'movie_id' => movie2.id,
  'star_id' => star3.id,
  'fee' => 15
  })
casting3.save()

binding.pry
nil
