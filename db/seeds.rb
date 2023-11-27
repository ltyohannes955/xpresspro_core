# seed.rb

# Create Drivers
Driver.create!(
  driver_name: 'John Doe',
  phone_number: 1234567890,
  email: 'john.doe@example.com',
  status: 'Available',
  language: 'English'
)
# db/seeds.rb

# Drivers
Driver.create!(
  driver_name: 'John Doe',
  phone_number: 1234567890,
  email: 'john@example.com',
  status: 'Available',
  language: 'English'
)

Driver.create!(
  driver_name: 'Jane Smith',
  phone_number: 9876543210,
  email: 'jane@example.com',
  status: 'Available',
  language: 'English'
)

# Users
User.create!(
  first_name: 'Alice',
  last_name: 'Johnson',
  email: 'alice@example.com',
  phone_number: 1393,
  password: 'password'
)

User.create!(
  first_name: 'Bob',
  last_name: 'Smith',
  email: 'bob@example.com',
  phone_number: 9889,
  password: 'password'
)

# Vehicles
Vehicle.create!(
  vehicle_name: 'SUV1',
  vehicle_model: 'Toyota RAV4',
  person_capacity: 5,
  price_per_day: 50,
  luggage_capacity: 3,
  weightcapacity: 1500,
  sideview: 'suv1_side.jpg',
  backview: 'suv1_back.jpg',
  frontview: 'suv1_front.jpg'
)

Vehicle.create!(
  vehicle_name: 'Sedan1',
  vehicle_model: 'Honda Accord',
  person_capacity: 4,
  price_per_day: 40,
  luggage_capacity: 2,
  weightcapacity: 1200,
  sideview: 'sedan1_side.jpg',
  backview: 'sedan1_back.jpg',
  frontview: 'sedan1_front.jpg'
)

# Sightseeings
Sightseeing.create!(
  location: 'Museum of Art',
  description: 'A beautiful museum showcasing various art collections.',
  price_per_hour: 10,
  time_spent: 2,
  image: 'museum_image.jpg'
)

Sightseeing.create!(
  location: 'City Park',
  description: 'A large park with scenic views and recreational activities.',
  price_per_hour: 5,
  time_spent: 1,
  image: 'park_image.jpg'
)

# Seats
Seat.create!(
  seat_name: 'Front Seat',
  seat_description: 'Comfortable front seat with extra legroom.',
  image: 'front_seat.jpg'
)

Seat.create!(
  seat_name: 'Back Seat',
  seat_description: 'Spacious back seat with a view.',
  image: 'back_seat.jpg'
)

# Journeys (assuming you have the required associations set up)
Journey.create!(
  origin: 'City A',
  destination: 'City B',
  Departure_Date: Date.today,
  Departure_time: Time.now,
  list_of_Sightseeing: ['Museum of Art', 'City Park'],
  status: 'Pending',
  user_id: User.first.id,
  vehicle_id: Vehicle.first.id,
  driver_id: Driver.first.id
)

Journey.create!(
  origin: 'City C',
  destination: 'City D',
  Departure_Date: Date.today,
  Departure_time: Time.now + 1.hour,
  list_of_Sightseeing: ['City Park'],
  status: 'Pending',
  user_id: User.last.id,
  vehicle_id: Vehicle.last.id,
  driver_id: Driver.last.id
)

# You can add more records as needed


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
