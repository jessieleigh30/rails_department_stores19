5.times do 
  d = Department.create(
    name: Faker::Company.industry
  )

5.times do
  Item.create(
    department_id: d.id,
    name: Faker::TvShows::NewGirl.character,
    description: Faker::TvShows::MichaelScott.quote,
    price: Faker::Number.decimal(2)
  )
  end
end

puts 'seeded'
