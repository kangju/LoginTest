# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
tablenames = %w(staff_members)
tablenames.each do |t|
   path = Rails.root.join('db','seeds',Rails.env,"#{t}.rb")
   if File.exist?(path)
      puts "Creating #{t} ....."
      require path
   end
end