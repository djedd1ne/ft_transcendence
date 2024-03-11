require 'active_record'

# Load database configuration from database.yml
ActiveRecord::Base.establish_connection(YAML.load_file('database.yml')['development'])

# Test the connection
begin
  ActiveRecord::Base.connection
  puts "Connected to database successfully!"
rescue ActiveRecord::NoDatabaseError => e
  puts "Database connection failed:"
  puts e.message
end

# Perform database operations here
