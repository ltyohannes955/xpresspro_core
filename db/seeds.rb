# seed.rb

# Create Drivers
Driver.create!(
  driver_name: 'John Doe',
  phone_number: 1234567890,
  email: 'john.doe@example.com',
  status: 'Available',
  language: 'English'
)

# Create Users
User.create!(
  first_name: 'Alice',
  last_name: 'Doe',
  email: 'alice.doe@example.com',
  phone_number: 9889,
  password: 'password123'
)

# Create Vehicles
Vehicle.create!(
  vehicle_name: 'Car',
  vehicle_model: 'Model X',
  person_capacity: 4,
  price_per_day: 50,
  luggage_capacity: 2
)

# Create Sightseeings
Sightseeing.create!(
  location: 'City Center',
  description: 'A bustling city center with shops and restaurants.',
  price_per_hour: 10,
  time_spent: 2
)
# seed.rb

# ...

# Create Sightseeings
Sightseeing.create!(
  location: 'Eiffel Tower',
  description: 'Iconic iron tower located in Paris, France.',
  price_per_hour: 15,
  time_spent: 3
)

Sightseeing.create!(
  location: 'Great Wall of China',
  description: 'World-famous wall in northern China, built to protect against invasions.',
  price_per_hour: 20,
  time_spent: 4
)

Sightseeing.create!(
  location: 'Sydney Opera House',
  description: 'Architectural masterpiece and iconic performing arts venue in Sydney, Australia.',
  price_per_hour: 18,
  time_spent: 2
)

Sightseeing.create!(
  location: 'Machu Picchu',
  description: 'Ancient Inca citadel situated in the Andes Mountains, Peru.',
  price_per_hour: 25,
  time_spent: 5
)

# ...


# Create Seats
Seat.create!(
  seat_name: 'Front Seat',
  seat_description: 'Comfortable front seat with a good view.',
  image: 'front_seat.jpg' # Replace with the actual image filename or URL
)

# Create Journeys
Journey.create!(
  origin: 'New York',
  destination: 'Los Angeles',
  Departure_Date: Date.today,
  Departure_time: Time.now,
  list_of_Sightseeing: ['Times Square', 'Hollywood Sign'],
  status: 'Pending',
  user_id: User.first.id,
  vehicle_id: Vehicle.first.id,
  driver_id: Driver.first.id
)

# Add more realistic city names and locations as needed for additional records.

# You can add more records for other tables based on your requirements.
